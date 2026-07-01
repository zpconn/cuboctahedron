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

/-- Validity shard for source states [0, 64). -/
theorem valid_s0000 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (0 : State) label t gain ->
      gain + graphPotential t <= graphPotential (0 : State) := by
  intro h
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

theorem valid_s0001 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (1 : State) label t gain ->
      gain + graphPotential t <= graphPotential (1 : State) := by
  intro h
  change graphSmokeNext_s0001 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0001] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (114 : State) <= graphPotential (1 : State)
    decide
  ·
    simp [graphSmokeNext_s0001, h_l0007] at h

theorem valid_s0002 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (2 : State) label t gain ->
      gain + graphPotential t <= graphPotential (2 : State) := by
  intro h
  change graphSmokeNext_s0002 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0002] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (117 : State) <= graphPotential (2 : State)
    decide
  ·
    simp [graphSmokeNext_s0002, h_l0007] at h

theorem valid_s0003 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (3 : State) label t gain ->
      gain + graphPotential t <= graphPotential (3 : State) := by
  intro h
  change graphSmokeNext_s0003 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0003] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (119 : State) <= graphPotential (3 : State)
    decide
  ·
    simp [graphSmokeNext_s0003, h_l0007] at h

theorem valid_s0004 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (4 : State) label t gain ->
      gain + graphPotential t <= graphPotential (4 : State) := by
  intro h
  change graphSmokeNext_s0004 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0004] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (120 : State) <= graphPotential (4 : State)
    decide
  ·
    simp [graphSmokeNext_s0004, h_l0007] at h

theorem valid_s0005 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (5 : State) label t gain ->
      gain + graphPotential t <= graphPotential (5 : State) := by
  intro h
  change graphSmokeNext_s0005 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0005] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (122 : State) <= graphPotential (5 : State)
    decide
  ·
    simp [graphSmokeNext_s0005, h_l0007] at h

theorem valid_s0006 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (6 : State) label t gain ->
      gain + graphPotential t <= graphPotential (6 : State) := by
  intro h
  change graphSmokeNext_s0006 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0006] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (123 : State) <= graphPotential (6 : State)
    decide
  ·
    simp [graphSmokeNext_s0006, h_l0007] at h

theorem valid_s0007 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (7 : State) label t gain ->
      gain + graphPotential t <= graphPotential (7 : State) := by
  intro h
  change graphSmokeNext_s0007 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0007] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (124 : State) <= graphPotential (7 : State)
    decide
  ·
    simp [graphSmokeNext_s0007, h_l0007] at h

theorem valid_s0008 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (8 : State) label t gain ->
      gain + graphPotential t <= graphPotential (8 : State) := by
  intro h
  change graphSmokeNext_s0008 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0008] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (126 : State) <= graphPotential (8 : State)
    decide
  ·
    simp [graphSmokeNext_s0008, h_l0007] at h

theorem valid_s0009 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (9 : State) label t gain ->
      gain + graphPotential t <= graphPotential (9 : State) := by
  intro h
  change graphSmokeNext_s0009 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0009] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (127 : State) <= graphPotential (9 : State)
    decide
  ·
    simp [graphSmokeNext_s0009, h_l0007] at h

theorem valid_s0010 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (10 : State) label t gain ->
      gain + graphPotential t <= graphPotential (10 : State) := by
  intro h
  change graphSmokeNext_s0010 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0010] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (128 : State) <= graphPotential (10 : State)
    decide
  ·
    simp [graphSmokeNext_s0010, h_l0007] at h

theorem valid_s0011 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (11 : State) label t gain ->
      gain + graphPotential t <= graphPotential (11 : State) := by
  intro h
  change graphSmokeNext_s0011 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0011] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (129 : State) <= graphPotential (11 : State)
    decide
  ·
    simp [graphSmokeNext_s0011, h_l0007] at h

theorem valid_s0012 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (12 : State) label t gain ->
      gain + graphPotential t <= graphPotential (12 : State) := by
  intro h
  change graphSmokeNext_s0012 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0012] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (130 : State) <= graphPotential (12 : State)
    decide
  ·
    simp [graphSmokeNext_s0012, h_l0007] at h

theorem valid_s0013 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (13 : State) label t gain ->
      gain + graphPotential t <= graphPotential (13 : State) := by
  intro h
  change graphSmokeNext_s0013 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0013] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (132 : State) <= graphPotential (13 : State)
    decide
  ·
    simp [graphSmokeNext_s0013, h_l0007] at h

theorem valid_s0014 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (14 : State) label t gain ->
      gain + graphPotential t <= graphPotential (14 : State) := by
  intro h
  change graphSmokeNext_s0014 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0014] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (133 : State) <= graphPotential (14 : State)
    decide
  ·
    simp [graphSmokeNext_s0014, h_l0007] at h

theorem valid_s0015 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (15 : State) label t gain ->
      gain + graphPotential t <= graphPotential (15 : State) := by
  intro h
  change graphSmokeNext_s0015 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0015] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (134 : State) <= graphPotential (15 : State)
    decide
  ·
    simp [graphSmokeNext_s0015, h_l0007] at h

theorem valid_s0016 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (16 : State) label t gain ->
      gain + graphPotential t <= graphPotential (16 : State) := by
  intro h
  change graphSmokeNext_s0016 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0016] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (135 : State) <= graphPotential (16 : State)
    decide
  ·
    simp [graphSmokeNext_s0016, h_l0007] at h

theorem valid_s0017 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (17 : State) label t gain ->
      gain + graphPotential t <= graphPotential (17 : State) := by
  intro h
  change graphSmokeNext_s0017 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0017] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (136 : State) <= graphPotential (17 : State)
    decide
  ·
    simp [graphSmokeNext_s0017, h_l0007] at h

theorem valid_s0018 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (18 : State) label t gain ->
      gain + graphPotential t <= graphPotential (18 : State) := by
  intro h
  change graphSmokeNext_s0018 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0018] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (138 : State) <= graphPotential (18 : State)
    decide
  ·
    simp [graphSmokeNext_s0018, h_l0007] at h

theorem valid_s0019 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (19 : State) label t gain ->
      gain + graphPotential t <= graphPotential (19 : State) := by
  intro h
  change graphSmokeNext_s0019 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0019] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (139 : State) <= graphPotential (19 : State)
    decide
  ·
    simp [graphSmokeNext_s0019, h_l0007] at h

theorem valid_s0020 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (20 : State) label t gain ->
      gain + graphPotential t <= graphPotential (20 : State) := by
  intro h
  change graphSmokeNext_s0020 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0020] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (140 : State) <= graphPotential (20 : State)
    decide
  ·
    simp [graphSmokeNext_s0020, h_l0007] at h

theorem valid_s0021 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (21 : State) label t gain ->
      gain + graphPotential t <= graphPotential (21 : State) := by
  intro h
  change graphSmokeNext_s0021 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0021] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (141 : State) <= graphPotential (21 : State)
    decide
  ·
    simp [graphSmokeNext_s0021, h_l0007] at h

theorem valid_s0022 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (22 : State) label t gain ->
      gain + graphPotential t <= graphPotential (22 : State) := by
  intro h
  change graphSmokeNext_s0022 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0022] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (148 : State) <= graphPotential (22 : State)
    decide
  ·
    simp [graphSmokeNext_s0022, h_l0007] at h

theorem valid_s0023 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (23 : State) label t gain ->
      gain + graphPotential t <= graphPotential (23 : State) := by
  intro h
  change graphSmokeNext_s0023 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0023] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (150 : State) <= graphPotential (23 : State)
    decide
  ·
    simp [graphSmokeNext_s0023, h_l0007] at h

theorem valid_s0024 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (24 : State) label t gain ->
      gain + graphPotential t <= graphPotential (24 : State) := by
  intro h
  change graphSmokeNext_s0024 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0024] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (151 : State) <= graphPotential (24 : State)
    decide
  ·
    simp [graphSmokeNext_s0024, h_l0007] at h

theorem valid_s0025 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (25 : State) label t gain ->
      gain + graphPotential t <= graphPotential (25 : State) := by
  intro h
  change graphSmokeNext_s0025 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0025] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (152 : State) <= graphPotential (25 : State)
    decide
  ·
    simp [graphSmokeNext_s0025, h_l0007] at h

theorem valid_s0026 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (26 : State) label t gain ->
      gain + graphPotential t <= graphPotential (26 : State) := by
  intro h
  change graphSmokeNext_s0026 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0026] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (153 : State) <= graphPotential (26 : State)
    decide
  ·
    simp [graphSmokeNext_s0026, h_l0007] at h

theorem valid_s0027 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (27 : State) label t gain ->
      gain + graphPotential t <= graphPotential (27 : State) := by
  intro h
  change graphSmokeNext_s0027 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0027] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (154 : State) <= graphPotential (27 : State)
    decide
  ·
    simp [graphSmokeNext_s0027, h_l0007] at h

theorem valid_s0028 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (28 : State) label t gain ->
      gain + graphPotential t <= graphPotential (28 : State) := by
  intro h
  change graphSmokeNext_s0028 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0028] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (156 : State) <= graphPotential (28 : State)
    decide
  ·
    simp [graphSmokeNext_s0028, h_l0007] at h

theorem valid_s0029 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (29 : State) label t gain ->
      gain + graphPotential t <= graphPotential (29 : State) := by
  intro h
  change graphSmokeNext_s0029 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0029] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (157 : State) <= graphPotential (29 : State)
    decide
  ·
    simp [graphSmokeNext_s0029, h_l0007] at h

theorem valid_s0030 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (30 : State) label t gain ->
      gain + graphPotential t <= graphPotential (30 : State) := by
  intro h
  change graphSmokeNext_s0030 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0030] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (158 : State) <= graphPotential (30 : State)
    decide
  ·
    simp [graphSmokeNext_s0030, h_l0007] at h

theorem valid_s0031 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (31 : State) label t gain ->
      gain + graphPotential t <= graphPotential (31 : State) := by
  intro h
  change graphSmokeNext_s0031 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0031] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (159 : State) <= graphPotential (31 : State)
    decide
  ·
    simp [graphSmokeNext_s0031, h_l0007] at h

theorem valid_s0032 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (32 : State) label t gain ->
      gain + graphPotential t <= graphPotential (32 : State) := by
  intro h
  change graphSmokeNext_s0032 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0032] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (160 : State) <= graphPotential (32 : State)
    decide
  ·
    simp [graphSmokeNext_s0032, h_l0007] at h

theorem valid_s0033 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (33 : State) label t gain ->
      gain + graphPotential t <= graphPotential (33 : State) := by
  intro h
  change graphSmokeNext_s0033 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0033] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (162 : State) <= graphPotential (33 : State)
    decide
  ·
    simp [graphSmokeNext_s0033, h_l0007] at h

theorem valid_s0034 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (34 : State) label t gain ->
      gain + graphPotential t <= graphPotential (34 : State) := by
  intro h
  change graphSmokeNext_s0034 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0034] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (163 : State) <= graphPotential (34 : State)
    decide
  ·
    simp [graphSmokeNext_s0034, h_l0007] at h

theorem valid_s0035 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (35 : State) label t gain ->
      gain + graphPotential t <= graphPotential (35 : State) := by
  intro h
  change graphSmokeNext_s0035 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0035] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (115 : State) <= graphPotential (35 : State)
    decide
  ·
    simp [graphSmokeNext_s0035, h_l0012] at h

theorem valid_s0036 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (36 : State) label t gain ->
      gain + graphPotential t <= graphPotential (36 : State) := by
  intro h
  change graphSmokeNext_s0036 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0036] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (116 : State) <= graphPotential (36 : State)
    decide
  ·
    simp [graphSmokeNext_s0036, h_l0012] at h

theorem valid_s0037 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (37 : State) label t gain ->
      gain + graphPotential t <= graphPotential (37 : State) := by
  intro h
  change graphSmokeNext_s0037 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0037] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (118 : State) <= graphPotential (37 : State)
    decide
  ·
    simp [graphSmokeNext_s0037, h_l0012] at h

theorem valid_s0038 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (38 : State) label t gain ->
      gain + graphPotential t <= graphPotential (38 : State) := by
  intro h
  change graphSmokeNext_s0038 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0038] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (121 : State) <= graphPotential (38 : State)
    decide
  ·
    simp [graphSmokeNext_s0038, h_l0012] at h

theorem valid_s0039 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (39 : State) label t gain ->
      gain + graphPotential t <= graphPotential (39 : State) := by
  intro h
  change graphSmokeNext_s0039 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0039] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (125 : State) <= graphPotential (39 : State)
    decide
  ·
    simp [graphSmokeNext_s0039, h_l0012] at h

theorem valid_s0040 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (40 : State) label t gain ->
      gain + graphPotential t <= graphPotential (40 : State) := by
  intro h
  change graphSmokeNext_s0040 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0040] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (131 : State) <= graphPotential (40 : State)
    decide
  ·
    simp [graphSmokeNext_s0040, h_l0012] at h

theorem valid_s0041 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (41 : State) label t gain ->
      gain + graphPotential t <= graphPotential (41 : State) := by
  intro h
  change graphSmokeNext_s0041 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0041] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (137 : State) <= graphPotential (41 : State)
    decide
  ·
    simp [graphSmokeNext_s0041, h_l0012] at h

theorem valid_s0042 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (42 : State) label t gain ->
      gain + graphPotential t <= graphPotential (42 : State) := by
  intro h
  change graphSmokeNext_s0042 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0042] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (142 : State) <= graphPotential (42 : State)
    decide
  ·
    simp [graphSmokeNext_s0042, h_l0012] at h

theorem valid_s0043 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (43 : State) label t gain ->
      gain + graphPotential t <= graphPotential (43 : State) := by
  intro h
  change graphSmokeNext_s0043 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0043] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (149 : State) <= graphPotential (43 : State)
    decide
  ·
    simp [graphSmokeNext_s0043, h_l0012] at h

theorem valid_s0044 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (44 : State) label t gain ->
      gain + graphPotential t <= graphPotential (44 : State) := by
  intro h
  change graphSmokeNext_s0044 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0044] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (155 : State) <= graphPotential (44 : State)
    decide
  ·
    simp [graphSmokeNext_s0044, h_l0012] at h

theorem valid_s0045 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (45 : State) label t gain ->
      gain + graphPotential t <= graphPotential (45 : State) := by
  intro h
  change graphSmokeNext_s0045 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0045] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (167 : State) <= graphPotential (45 : State)
    decide
  ·
    simp [graphSmokeNext_s0045, h_l0002] at h

theorem valid_s0046 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (46 : State) label t gain ->
      gain + graphPotential t <= graphPotential (46 : State) := by
  intro h
  change graphSmokeNext_s0046 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0046] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (169 : State) <= graphPotential (46 : State)
    decide
  ·
    simp [graphSmokeNext_s0046, h_l0002] at h

theorem valid_s0047 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (47 : State) label t gain ->
      gain + graphPotential t <= graphPotential (47 : State) := by
  intro h
  change graphSmokeNext_s0047 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0047] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (171 : State) <= graphPotential (47 : State)
    decide
  ·
    simp [graphSmokeNext_s0047, h_l0002] at h

theorem valid_s0048 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (48 : State) label t gain ->
      gain + graphPotential t <= graphPotential (48 : State) := by
  intro h
  change graphSmokeNext_s0048 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0048] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (175 : State) <= graphPotential (48 : State)
    decide
  ·
    simp [graphSmokeNext_s0048, h_l0002] at h

theorem valid_s0049 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (49 : State) label t gain ->
      gain + graphPotential t <= graphPotential (49 : State) := by
  intro h
  change graphSmokeNext_s0049 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0049] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (176 : State) <= graphPotential (49 : State)
    decide
  ·
    simp [graphSmokeNext_s0049, h_l0002] at h

theorem valid_s0050 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (50 : State) label t gain ->
      gain + graphPotential t <= graphPotential (50 : State) := by
  intro h
  change graphSmokeNext_s0050 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0050] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (178 : State) <= graphPotential (50 : State)
    decide
  ·
    simp [graphSmokeNext_s0050, h_l0002] at h

theorem valid_s0051 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (51 : State) label t gain ->
      gain + graphPotential t <= graphPotential (51 : State) := by
  intro h
  change graphSmokeNext_s0051 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0051] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (179 : State) <= graphPotential (51 : State)
    decide
  ·
    simp [graphSmokeNext_s0051, h_l0002] at h

theorem valid_s0052 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (52 : State) label t gain ->
      gain + graphPotential t <= graphPotential (52 : State) := by
  intro h
  change graphSmokeNext_s0052 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0052] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (180 : State) <= graphPotential (52 : State)
    decide
  ·
    simp [graphSmokeNext_s0052, h_l0002] at h

theorem valid_s0053 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (53 : State) label t gain ->
      gain + graphPotential t <= graphPotential (53 : State) := by
  intro h
  change graphSmokeNext_s0053 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0053] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (181 : State) <= graphPotential (53 : State)
    decide
  ·
    simp [graphSmokeNext_s0053, h_l0002] at h

theorem valid_s0054 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (54 : State) label t gain ->
      gain + graphPotential t <= graphPotential (54 : State) := by
  intro h
  change graphSmokeNext_s0054 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0054] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (182 : State) <= graphPotential (54 : State)
    decide
  ·
    simp [graphSmokeNext_s0054, h_l0002] at h

theorem valid_s0055 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (55 : State) label t gain ->
      gain + graphPotential t <= graphPotential (55 : State) := by
  intro h
  change graphSmokeNext_s0055 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0055] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (183 : State) <= graphPotential (55 : State)
    decide
  ·
    simp [graphSmokeNext_s0055, h_l0002] at h

theorem valid_s0056 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (56 : State) label t gain ->
      gain + graphPotential t <= graphPotential (56 : State) := by
  intro h
  change graphSmokeNext_s0056 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0056] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (184 : State) <= graphPotential (56 : State)
    decide
  ·
    simp [graphSmokeNext_s0056, h_l0002] at h

theorem valid_s0057 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (57 : State) label t gain ->
      gain + graphPotential t <= graphPotential (57 : State) := by
  intro h
  change graphSmokeNext_s0057 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0057] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (185 : State) <= graphPotential (57 : State)
    decide
  ·
    simp [graphSmokeNext_s0057, h_l0002] at h

theorem valid_s0058 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (58 : State) label t gain ->
      gain + graphPotential t <= graphPotential (58 : State) := by
  intro h
  change graphSmokeNext_s0058 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0058] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (186 : State) <= graphPotential (58 : State)
    decide
  ·
    simp [graphSmokeNext_s0058, h_l0002] at h

theorem valid_s0059 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (59 : State) label t gain ->
      gain + graphPotential t <= graphPotential (59 : State) := by
  intro h
  change graphSmokeNext_s0059 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0059] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (187 : State) <= graphPotential (59 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0059] at h
      rcases h with ⟨rfl, rfl⟩
      change (114 : Int) + graphPotential (164 : State) <= graphPotential (59 : State)
      decide
    ·
      simp [graphSmokeNext_s0059, h_l0001, h_l0012] at h

theorem valid_s0060 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (60 : State) label t gain ->
      gain + graphPotential t <= graphPotential (60 : State) := by
  intro h
  change graphSmokeNext_s0060 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0060] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (190 : State) <= graphPotential (60 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0060] at h
      rcases h with ⟨rfl, rfl⟩
      change (114 : Int) + graphPotential (165 : State) <= graphPotential (60 : State)
      decide
    ·
      simp [graphSmokeNext_s0060, h_l0001, h_l0012] at h

theorem valid_s0061 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (61 : State) label t gain ->
      gain + graphPotential t <= graphPotential (61 : State) := by
  intro h
  change graphSmokeNext_s0061 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0061] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (191 : State) <= graphPotential (61 : State)
    decide
  ·
    simp [graphSmokeNext_s0061, h_l0001] at h

theorem valid_s0062 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (62 : State) label t gain ->
      gain + graphPotential t <= graphPotential (62 : State) := by
  intro h
  change graphSmokeNext_s0062 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0062] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (192 : State) <= graphPotential (62 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0062] at h
      rcases h with ⟨rfl, rfl⟩
      change (114 : Int) + graphPotential (166 : State) <= graphPotential (62 : State)
      decide
    ·
      simp [graphSmokeNext_s0062, h_l0001, h_l0012] at h

theorem valid_s0063 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (63 : State) label t gain ->
      gain + graphPotential t <= graphPotential (63 : State) := by
  intro h
  change graphSmokeNext_s0063 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0063] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (193 : State) <= graphPotential (63 : State)
    decide
  ·
    simp [graphSmokeNext_s0063, h_l0001] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 0 <= s) (hhi : s < 64) :
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
  · exact valid_s0032 h
  · exact valid_s0033 h
  · exact valid_s0034 h
  · exact valid_s0035 h
  · exact valid_s0036 h
  · exact valid_s0037 h
  · exact valid_s0038 h
  · exact valid_s0039 h
  · exact valid_s0040 h
  · exact valid_s0041 h
  · exact valid_s0042 h
  · exact valid_s0043 h
  · exact valid_s0044 h
  · exact valid_s0045 h
  · exact valid_s0046 h
  · exact valid_s0047 h
  · exact valid_s0048 h
  · exact valid_s0049 h
  · exact valid_s0050 h
  · exact valid_s0051 h
  · exact valid_s0052 h
  · exact valid_s0053 h
  · exact valid_s0054 h
  · exact valid_s0055 h
  · exact valid_s0056 h
  · exact valid_s0057 h
  · exact valid_s0058 h
  · exact valid_s0059 h
  · exact valid_s0060 h
  · exact valid_s0061 h
  · exact valid_s0062 h
  · exact valid_s0063 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard000
