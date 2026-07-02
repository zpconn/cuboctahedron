import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Shard000

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Base

/-- Validity shard for source states [0, 32). -/
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
    change (103 : Int) + graphPotential (142 : State) <= graphPotential (0 : State)
    decide
  ·
    simp [graphSmokeNext_s0000, h_l0008] at h

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
    · change (103 : Int) + graphPotential (142 : State) <= graphPotential (0 : State)
      decide
  ·
    simp [graphSmokeNext_s0000, h_l0008] at h

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
    change (-36 : Int) + graphPotential (29 : State) <= graphPotential (1 : State)
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
    · change (-36 : Int) + graphPotential (29 : State) <= graphPotential (1 : State)
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
    change (-36 : Int) + graphPotential (31 : State) <= graphPotential (2 : State)
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
    · change (-36 : Int) + graphPotential (31 : State) <= graphPotential (2 : State)
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
    change (-36 : Int) + graphPotential (32 : State) <= graphPotential (3 : State)
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
    · change (-36 : Int) + graphPotential (32 : State) <= graphPotential (3 : State)
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
    change (-36 : Int) + graphPotential (33 : State) <= graphPotential (4 : State)
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
    · change (-36 : Int) + graphPotential (33 : State) <= graphPotential (4 : State)
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
    change (-36 : Int) + graphPotential (34 : State) <= graphPotential (5 : State)
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
    · change (-36 : Int) + graphPotential (34 : State) <= graphPotential (5 : State)
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
    change (-36 : Int) + graphPotential (36 : State) <= graphPotential (6 : State)
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
    · change (-36 : Int) + graphPotential (36 : State) <= graphPotential (6 : State)
      decide
  ·
    simp [graphSmokeNext_s0006, h_l0007] at h

theorem valid_s0007 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (7 : State) label t gain ->
      gain + graphPotential t <= graphPotential (7 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0007 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0007] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (23 : State) <= graphPotential (7 : State)
    decide
  ·
    simp [graphSmokeNext_s0007, h_l0012] at h

theorem transition_ok_s0007 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (7 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (7 : State) := by
  intro h
  change graphSmokeNext_s0007 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0007] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-18 : Int) + graphPotential (23 : State) <= graphPotential (7 : State)
      decide
  ·
    simp [graphSmokeNext_s0007, h_l0012] at h

theorem valid_s0008 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (8 : State) label t gain ->
      gain + graphPotential t <= graphPotential (8 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0008 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0008] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (30 : State) <= graphPotential (8 : State)
    decide
  ·
    simp [graphSmokeNext_s0008, h_l0012] at h

theorem transition_ok_s0008 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (8 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (8 : State) := by
  intro h
  change graphSmokeNext_s0008 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0008] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-18 : Int) + graphPotential (30 : State) <= graphPotential (8 : State)
      decide
  ·
    simp [graphSmokeNext_s0008, h_l0012] at h

theorem valid_s0009 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (9 : State) label t gain ->
      gain + graphPotential t <= graphPotential (9 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0009 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0009] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (39 : State) <= graphPotential (9 : State)
    decide
  ·
    simp [graphSmokeNext_s0009, h_l0002] at h

theorem transition_ok_s0009 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (9 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (9 : State) := by
  intro h
  change graphSmokeNext_s0009 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0009] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (39 : State) <= graphPotential (9 : State)
      decide
  ·
    simp [graphSmokeNext_s0009, h_l0002] at h

theorem valid_s0010 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (10 : State) label t gain ->
      gain + graphPotential t <= graphPotential (10 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0010 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0010] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (40 : State) <= graphPotential (10 : State)
    decide
  ·
    simp [graphSmokeNext_s0010, h_l0002] at h

theorem transition_ok_s0010 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (10 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (10 : State) := by
  intro h
  change graphSmokeNext_s0010 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0010] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (40 : State) <= graphPotential (10 : State)
      decide
  ·
    simp [graphSmokeNext_s0010, h_l0002] at h

theorem valid_s0011 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (11 : State) label t gain ->
      gain + graphPotential t <= graphPotential (11 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0011 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0011] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (41 : State) <= graphPotential (11 : State)
    decide
  ·
    simp [graphSmokeNext_s0011, h_l0002] at h

theorem transition_ok_s0011 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (11 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (11 : State) := by
  intro h
  change graphSmokeNext_s0011 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0011] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (41 : State) <= graphPotential (11 : State)
      decide
  ·
    simp [graphSmokeNext_s0011, h_l0002] at h

theorem valid_s0012 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (12 : State) label t gain ->
      gain + graphPotential t <= graphPotential (12 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0012 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0012] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (43 : State) <= graphPotential (12 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0012] at h
      rcases h with ⟨rfl, rfl⟩
      change (114 : Int) + graphPotential (37 : State) <= graphPotential (12 : State)
      decide
    ·
      simp [graphSmokeNext_s0012, h_l0001, h_l0012] at h

theorem transition_ok_s0012 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (12 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (12 : State) := by
  intro h
  change graphSmokeNext_s0012 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0012] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (43 : State) <= graphPotential (12 : State)
      decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0012] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (114 : Int) + graphPotential (37 : State) <= graphPotential (12 : State)
        decide
    ·
      simp [graphSmokeNext_s0012, h_l0001, h_l0012] at h

theorem valid_s0013 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (13 : State) label t gain ->
      gain + graphPotential t <= graphPotential (13 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0013 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0013] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (44 : State) <= graphPotential (13 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0013] at h
      rcases h with ⟨rfl, rfl⟩
      change (114 : Int) + graphPotential (38 : State) <= graphPotential (13 : State)
      decide
    ·
      simp [graphSmokeNext_s0013, h_l0001, h_l0012] at h

theorem transition_ok_s0013 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (13 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (13 : State) := by
  intro h
  change graphSmokeNext_s0013 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0013] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (44 : State) <= graphPotential (13 : State)
      decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0013] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (114 : Int) + graphPotential (38 : State) <= graphPotential (13 : State)
        decide
    ·
      simp [graphSmokeNext_s0013, h_l0001, h_l0012] at h

theorem valid_s0014 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (14 : State) label t gain ->
      gain + graphPotential t <= graphPotential (14 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0014 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0014] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (45 : State) <= graphPotential (14 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0014] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (23 : State) <= graphPotential (14 : State)
      decide
    ·
      simp [graphSmokeNext_s0014, h_l0001, h_l0011] at h

theorem transition_ok_s0014 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (14 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (14 : State) := by
  intro h
  change graphSmokeNext_s0014 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0014] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (45 : State) <= graphPotential (14 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0014] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (23 : State) <= graphPotential (14 : State)
        decide
    ·
      simp [graphSmokeNext_s0014, h_l0001, h_l0011] at h

theorem valid_s0015 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (15 : State) label t gain ->
      gain + graphPotential t <= graphPotential (15 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0015 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0015] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (46 : State) <= graphPotential (15 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0015] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (24 : State) <= graphPotential (15 : State)
      decide
    ·
      simp [graphSmokeNext_s0015, h_l0001, h_l0011] at h

theorem transition_ok_s0015 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (15 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (15 : State) := by
  intro h
  change graphSmokeNext_s0015 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0015] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (46 : State) <= graphPotential (15 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0015] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (24 : State) <= graphPotential (15 : State)
        decide
    ·
      simp [graphSmokeNext_s0015, h_l0001, h_l0011] at h

theorem valid_s0016 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (16 : State) label t gain ->
      gain + graphPotential t <= graphPotential (16 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0016 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0016] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (47 : State) <= graphPotential (16 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0016] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (25 : State) <= graphPotential (16 : State)
      decide
    ·
      simp [graphSmokeNext_s0016, h_l0001, h_l0011] at h

theorem transition_ok_s0016 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (16 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (16 : State) := by
  intro h
  change graphSmokeNext_s0016 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0016] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (47 : State) <= graphPotential (16 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0016] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (25 : State) <= graphPotential (16 : State)
        decide
    ·
      simp [graphSmokeNext_s0016, h_l0001, h_l0011] at h

theorem valid_s0017 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (17 : State) label t gain ->
      gain + graphPotential t <= graphPotential (17 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0017 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0017] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (48 : State) <= graphPotential (17 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0017] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (26 : State) <= graphPotential (17 : State)
      decide
    ·
      simp [graphSmokeNext_s0017, h_l0001, h_l0011] at h

theorem transition_ok_s0017 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (17 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (17 : State) := by
  intro h
  change graphSmokeNext_s0017 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0017] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (48 : State) <= graphPotential (17 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0017] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (26 : State) <= graphPotential (17 : State)
        decide
    ·
      simp [graphSmokeNext_s0017, h_l0001, h_l0011] at h

theorem valid_s0018 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (18 : State) label t gain ->
      gain + graphPotential t <= graphPotential (18 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0018 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0018] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (49 : State) <= graphPotential (18 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0018] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (27 : State) <= graphPotential (18 : State)
      decide
    ·
      simp [graphSmokeNext_s0018, h_l0001, h_l0011] at h

theorem transition_ok_s0018 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (18 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (18 : State) := by
  intro h
  change graphSmokeNext_s0018 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0018] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (49 : State) <= graphPotential (18 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0018] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (27 : State) <= graphPotential (18 : State)
        decide
    ·
      simp [graphSmokeNext_s0018, h_l0001, h_l0011] at h

theorem valid_s0019 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (19 : State) label t gain ->
      gain + graphPotential t <= graphPotential (19 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0019 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0019] at h
    rcases h with ⟨rfl, rfl⟩
    change (-117 : Int) + graphPotential (28 : State) <= graphPotential (19 : State)
    decide
  ·
    simp [graphSmokeNext_s0019, h_l0011] at h

theorem transition_ok_s0019 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (19 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (19 : State) := by
  intro h
  change graphSmokeNext_s0019 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0019] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-117 : Int) + graphPotential (28 : State) <= graphPotential (19 : State)
      decide
  ·
    simp [graphSmokeNext_s0019, h_l0011] at h

theorem valid_s0020 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (20 : State) label t gain ->
      gain + graphPotential t <= graphPotential (20 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0020 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0020] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (50 : State) <= graphPotential (20 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0020] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (35 : State) <= graphPotential (20 : State)
      decide
    ·
      simp [graphSmokeNext_s0020, h_l0001, h_l0011] at h

theorem transition_ok_s0020 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (20 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (20 : State) := by
  intro h
  change graphSmokeNext_s0020 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0020] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (50 : State) <= graphPotential (20 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0020] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (35 : State) <= graphPotential (20 : State)
        decide
    ·
      simp [graphSmokeNext_s0020, h_l0001, h_l0011] at h

theorem valid_s0021 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (21 : State) label t gain ->
      gain + graphPotential t <= graphPotential (21 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0021 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0021] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (52 : State) <= graphPotential (21 : State)
    decide
  ·
    simp [graphSmokeNext_s0021, h_l0002] at h

theorem transition_ok_s0021 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (21 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (21 : State) := by
  intro h
  change graphSmokeNext_s0021 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0021] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (52 : State) <= graphPotential (21 : State)
      decide
  ·
    simp [graphSmokeNext_s0021, h_l0002] at h

theorem valid_s0022 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (22 : State) label t gain ->
      gain + graphPotential t <= graphPotential (22 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0022 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0022] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (42 : State) <= graphPotential (22 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0022] at h
      rcases h with ⟨rfl, rfl⟩
      change (-10 : Int) + graphPotential (51 : State) <= graphPotential (22 : State)
      decide
    ·
      simp [graphSmokeNext_s0022, h_l0011, h_l0012] at h

theorem transition_ok_s0022 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (22 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (22 : State) := by
  intro h
  change graphSmokeNext_s0022 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0022] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (42 : State) <= graphPotential (22 : State)
      decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0022] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-10 : Int) + graphPotential (51 : State) <= graphPotential (22 : State)
        decide
    ·
      simp [graphSmokeNext_s0022, h_l0011, h_l0012] at h

theorem valid_s0023 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (23 : State) label t gain ->
      gain + graphPotential t <= graphPotential (23 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0023 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0023] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (53 : State) <= graphPotential (23 : State)
    decide
  ·
    simp [graphSmokeNext_s0023, h_l0003] at h

theorem transition_ok_s0023 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (23 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (23 : State) := by
  intro h
  change graphSmokeNext_s0023 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0023] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (53 : State) <= graphPotential (23 : State)
      decide
  ·
    simp [graphSmokeNext_s0023, h_l0003] at h

theorem valid_s0024 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (24 : State) label t gain ->
      gain + graphPotential t <= graphPotential (24 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0024 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0024] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (55 : State) <= graphPotential (24 : State)
    decide
  ·
    simp [graphSmokeNext_s0024, h_l0003] at h

theorem transition_ok_s0024 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (24 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (24 : State) := by
  intro h
  change graphSmokeNext_s0024 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0024] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (55 : State) <= graphPotential (24 : State)
      decide
  ·
    simp [graphSmokeNext_s0024, h_l0003] at h

theorem valid_s0025 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (25 : State) label t gain ->
      gain + graphPotential t <= graphPotential (25 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0025 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0025] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (56 : State) <= graphPotential (25 : State)
    decide
  ·
    simp [graphSmokeNext_s0025, h_l0003] at h

theorem transition_ok_s0025 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (25 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (25 : State) := by
  intro h
  change graphSmokeNext_s0025 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0025] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (56 : State) <= graphPotential (25 : State)
      decide
  ·
    simp [graphSmokeNext_s0025, h_l0003] at h

theorem valid_s0026 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (26 : State) label t gain ->
      gain + graphPotential t <= graphPotential (26 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0026 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0026] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (57 : State) <= graphPotential (26 : State)
    decide
  ·
    simp [graphSmokeNext_s0026, h_l0003] at h

theorem transition_ok_s0026 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (26 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (26 : State) := by
  intro h
  change graphSmokeNext_s0026 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0026] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (57 : State) <= graphPotential (26 : State)
      decide
  ·
    simp [graphSmokeNext_s0026, h_l0003] at h

theorem valid_s0027 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (27 : State) label t gain ->
      gain + graphPotential t <= graphPotential (27 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0027 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0027] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (58 : State) <= graphPotential (27 : State)
    decide
  ·
    simp [graphSmokeNext_s0027, h_l0003] at h

theorem transition_ok_s0027 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (27 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (27 : State) := by
  intro h
  change graphSmokeNext_s0027 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0027] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (58 : State) <= graphPotential (27 : State)
      decide
  ·
    simp [graphSmokeNext_s0027, h_l0003] at h

theorem valid_s0028 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (28 : State) label t gain ->
      gain + graphPotential t <= graphPotential (28 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0028 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0028] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (59 : State) <= graphPotential (28 : State)
    decide
  ·
    simp [graphSmokeNext_s0028, h_l0003] at h

theorem transition_ok_s0028 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (28 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (28 : State) := by
  intro h
  change graphSmokeNext_s0028 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0028] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (59 : State) <= graphPotential (28 : State)
      decide
  ·
    simp [graphSmokeNext_s0028, h_l0003] at h

theorem valid_s0029 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (29 : State) label t gain ->
      gain + graphPotential t <= graphPotential (29 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0029 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0029] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (60 : State) <= graphPotential (29 : State)
    decide
  ·
    simp [graphSmokeNext_s0029, h_l0003] at h

theorem transition_ok_s0029 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (29 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (29 : State) := by
  intro h
  change graphSmokeNext_s0029 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0029] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (60 : State) <= graphPotential (29 : State)
      decide
  ·
    simp [graphSmokeNext_s0029, h_l0003] at h

theorem valid_s0030 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (30 : State) label t gain ->
      gain + graphPotential t <= graphPotential (30 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0030 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0030] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (61 : State) <= graphPotential (30 : State)
    decide
  ·
    simp [graphSmokeNext_s0030, h_l0003] at h

theorem transition_ok_s0030 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (30 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (30 : State) := by
  intro h
  change graphSmokeNext_s0030 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0030] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (61 : State) <= graphPotential (30 : State)
      decide
  ·
    simp [graphSmokeNext_s0030, h_l0003] at h

theorem valid_s0031 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (31 : State) label t gain ->
      gain + graphPotential t <= graphPotential (31 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0031 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0031] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (63 : State) <= graphPotential (31 : State)
    decide
  ·
    simp [graphSmokeNext_s0031, h_l0003] at h

theorem transition_ok_s0031 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (31 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (31 : State) := by
  intro h
  change graphSmokeNext_s0031 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0031] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (63 : State) <= graphPotential (31 : State)
      decide
  ·
    simp [graphSmokeNext_s0031, h_l0003] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 0 <= s) (hhi : s < 32) :
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
  · exact valid_s0008 h
  · exact valid_s0009 h
  · exact valid_s0010 h
  · exact valid_s0011 h
  · exact valid_s0012 h
  · exact valid_s0013 h
  · exact valid_s0014 h
  · exact valid_s0015 h
  · exact valid_s0016 h
  · exact valid_s0017 h
  · exact valid_s0018 h
  · exact valid_s0019 h
  · exact valid_s0020 h
  · exact valid_s0021 h
  · exact valid_s0022 h
  · exact valid_s0023 h
  · exact valid_s0024 h
  · exact valid_s0025 h
  · exact valid_s0026 h
  · exact valid_s0027 h
  · exact valid_s0028 h
  · exact valid_s0029 h
  · exact valid_s0030 h
  · exact valid_s0031 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 0 <= s) (hhi : s < 32) :
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
  · exact transition_ok_s0008 h
  · exact transition_ok_s0009 h
  · exact transition_ok_s0010 h
  · exact transition_ok_s0011 h
  · exact transition_ok_s0012 h
  · exact transition_ok_s0013 h
  · exact transition_ok_s0014 h
  · exact transition_ok_s0015 h
  · exact transition_ok_s0016 h
  · exact transition_ok_s0017 h
  · exact transition_ok_s0018 h
  · exact transition_ok_s0019 h
  · exact transition_ok_s0020 h
  · exact transition_ok_s0021 h
  · exact transition_ok_s0022 h
  · exact transition_ok_s0023 h
  · exact transition_ok_s0024 h
  · exact transition_ok_s0025 h
  · exact transition_ok_s0026 h
  · exact transition_ok_s0027 h
  · exact transition_ok_s0028 h
  · exact transition_ok_s0029 h
  · exact transition_ok_s0030 h
  · exact transition_ok_s0031 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Shard000
