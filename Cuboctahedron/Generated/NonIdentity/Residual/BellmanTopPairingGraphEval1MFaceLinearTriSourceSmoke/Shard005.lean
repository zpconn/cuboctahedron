import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Shard005

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Base

/-- Validity shard for source states [160, 192). -/
theorem valid_s0160 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (160 : State) label t gain ->
      gain + graphPotential t <= graphPotential (160 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0160 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0160] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (172 : State) <= graphPotential (160 : State)
    decide
  ·
    simp [graphSmokeNext_s0160, h_l0005] at h

theorem transition_ok_s0160 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (160 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (160 : State) := by
  intro h
  change graphSmokeNext_s0160 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0160] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (172 : State) <= graphPotential (160 : State)
      decide
  ·
    simp [graphSmokeNext_s0160, h_l0005] at h

theorem valid_s0161 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (161 : State) label t gain ->
      gain + graphPotential t <= graphPotential (161 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0161 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0161] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (173 : State) <= graphPotential (161 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0161] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (171 : State) <= graphPotential (161 : State)
      decide
    ·
      simp [graphSmokeNext_s0161, h_l0007, h_l0013] at h

theorem transition_ok_s0161 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (161 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (161 : State) := by
  intro h
  change graphSmokeNext_s0161 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0161] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (173 : State) <= graphPotential (161 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0161] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-54 : Int) + graphPotential (171 : State) <= graphPotential (161 : State)
        decide
    ·
      simp [graphSmokeNext_s0161, h_l0007, h_l0013] at h

theorem valid_s0162 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (162 : State) label t gain ->
      gain + graphPotential t <= graphPotential (162 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0162 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0162] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (175 : State) <= graphPotential (162 : State)
    decide
  ·
    simp [graphSmokeNext_s0162, h_l0004] at h

theorem transition_ok_s0162 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (162 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (162 : State) := by
  intro h
  change graphSmokeNext_s0162 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0162] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (175 : State) <= graphPotential (162 : State)
      decide
  ·
    simp [graphSmokeNext_s0162, h_l0004] at h

theorem valid_s0163 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (163 : State) label t gain ->
      gain + graphPotential t <= graphPotential (163 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0163 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0163] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (176 : State) <= graphPotential (163 : State)
    decide
  ·
    simp [graphSmokeNext_s0163, h_l0004] at h

theorem transition_ok_s0163 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (163 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (163 : State) := by
  intro h
  change graphSmokeNext_s0163 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0163] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (176 : State) <= graphPotential (163 : State)
      decide
  ·
    simp [graphSmokeNext_s0163, h_l0004] at h

theorem valid_s0164 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (164 : State) label t gain ->
      gain + graphPotential t <= graphPotential (164 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0164 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0164] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (174 : State) <= graphPotential (164 : State)
    decide
  ·
    simp [graphSmokeNext_s0164, h_l0012] at h

theorem transition_ok_s0164 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (164 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (164 : State) := by
  intro h
  change graphSmokeNext_s0164 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0164] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-18 : Int) + graphPotential (174 : State) <= graphPotential (164 : State)
      decide
  ·
    simp [graphSmokeNext_s0164, h_l0012] at h

theorem valid_s0165 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (165 : State) label t gain ->
      gain + graphPotential t <= graphPotential (165 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0165 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0165] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (178 : State) <= graphPotential (165 : State)
    decide
  ·
    simp [graphSmokeNext_s0165, h_l0007] at h

theorem transition_ok_s0165 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (165 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (165 : State) := by
  intro h
  change graphSmokeNext_s0165 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0165] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (178 : State) <= graphPotential (165 : State)
      decide
  ·
    simp [graphSmokeNext_s0165, h_l0007] at h

theorem valid_s0166 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (166 : State) label t gain ->
      gain + graphPotential t <= graphPotential (166 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0166 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0166] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (179 : State) <= graphPotential (166 : State)
    decide
  ·
    simp [graphSmokeNext_s0166, h_l0007] at h

theorem transition_ok_s0166 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (166 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (166 : State) := by
  intro h
  change graphSmokeNext_s0166 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0166] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (179 : State) <= graphPotential (166 : State)
      decide
  ·
    simp [graphSmokeNext_s0166, h_l0007] at h

theorem valid_s0167 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (167 : State) label t gain ->
      gain + graphPotential t <= graphPotential (167 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0167 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0167] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (180 : State) <= graphPotential (167 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0167] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (177 : State) <= graphPotential (167 : State)
      decide
    ·
      simp [graphSmokeNext_s0167, h_l0005, h_l0013] at h

theorem transition_ok_s0167 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (167 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (167 : State) := by
  intro h
  change graphSmokeNext_s0167 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0167] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (180 : State) <= graphPotential (167 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0167] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-54 : Int) + graphPotential (177 : State) <= graphPotential (167 : State)
        decide
    ·
      simp [graphSmokeNext_s0167, h_l0005, h_l0013] at h

theorem valid_s0168 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (168 : State) label t gain ->
      gain + graphPotential t <= graphPotential (168 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0168 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0168] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (182 : State) <= graphPotential (168 : State)
    decide
  ·
    simp [graphSmokeNext_s0168, h_l0004] at h

theorem transition_ok_s0168 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (168 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (168 : State) := by
  intro h
  change graphSmokeNext_s0168 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0168] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (182 : State) <= graphPotential (168 : State)
      decide
  ·
    simp [graphSmokeNext_s0168, h_l0004] at h

theorem valid_s0169 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (169 : State) label t gain ->
      gain + graphPotential t <= graphPotential (169 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0169 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0169] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (183 : State) <= graphPotential (169 : State)
    decide
  ·
    simp [graphSmokeNext_s0169, h_l0004] at h

theorem transition_ok_s0169 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (169 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (169 : State) := by
  intro h
  change graphSmokeNext_s0169 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0169] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (183 : State) <= graphPotential (169 : State)
      decide
  ·
    simp [graphSmokeNext_s0169, h_l0004] at h

theorem valid_s0170 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (170 : State) label t gain ->
      gain + graphPotential t <= graphPotential (170 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0170 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0170] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (184 : State) <= graphPotential (170 : State)
    decide
  ·
    simp [graphSmokeNext_s0170, h_l0004] at h

theorem transition_ok_s0170 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (170 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (170 : State) := by
  intro h
  change graphSmokeNext_s0170 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0170] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (184 : State) <= graphPotential (170 : State)
      decide
  ·
    simp [graphSmokeNext_s0170, h_l0004] at h

theorem valid_s0171 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (171 : State) label t gain ->
      gain + graphPotential t <= graphPotential (171 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0171 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0171] at h
    rcases h with ⟨rfl, rfl⟩
    change (-54 : Int) + graphPotential (181 : State) <= graphPotential (171 : State)
    decide
  ·
    simp [graphSmokeNext_s0171, h_l0012] at h

theorem transition_ok_s0171 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (171 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (171 : State) := by
  intro h
  change graphSmokeNext_s0171 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0171] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-54 : Int) + graphPotential (181 : State) <= graphPotential (171 : State)
      decide
  ·
    simp [graphSmokeNext_s0171, h_l0012] at h

theorem valid_s0172 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (172 : State) label t gain ->
      gain + graphPotential t <= graphPotential (172 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0172 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0172] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (186 : State) <= graphPotential (172 : State)
    decide
  ·
    simp [graphSmokeNext_s0172, h_l0006] at h

theorem transition_ok_s0172 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (172 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (172 : State) := by
  intro h
  change graphSmokeNext_s0172 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0172] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (186 : State) <= graphPotential (172 : State)
      decide
  ·
    simp [graphSmokeNext_s0172, h_l0006] at h

theorem valid_s0173 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (173 : State) label t gain ->
      gain + graphPotential t <= graphPotential (173 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0173 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0173] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (187 : State) <= graphPotential (173 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0173] at h
      rcases h with ⟨rfl, rfl⟩
      change (90 : Int) + graphPotential (185 : State) <= graphPotential (173 : State)
      decide
    ·
      simp [graphSmokeNext_s0173, h_l0000, h_l0013] at h

theorem transition_ok_s0173 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (173 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (173 : State) := by
  intro h
  change graphSmokeNext_s0173 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0173] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (187 : State) <= graphPotential (173 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0173] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (90 : Int) + graphPotential (185 : State) <= graphPotential (173 : State)
        decide
    ·
      simp [graphSmokeNext_s0173, h_l0000, h_l0013] at h

theorem valid_s0174 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (174 : State) label t gain ->
      gain + graphPotential t <= graphPotential (174 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0174 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0174] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (189 : State) <= graphPotential (174 : State)
    decide
  ·
    simp [graphSmokeNext_s0174, h_l0006] at h

theorem transition_ok_s0174 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (174 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (174 : State) := by
  intro h
  change graphSmokeNext_s0174 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0174] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (189 : State) <= graphPotential (174 : State)
      decide
  ·
    simp [graphSmokeNext_s0174, h_l0006] at h

theorem valid_s0175 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (175 : State) label t gain ->
      gain + graphPotential t <= graphPotential (175 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0175 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0175] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (190 : State) <= graphPotential (175 : State)
    decide
  ·
    simp [graphSmokeNext_s0175, h_l0006] at h

theorem transition_ok_s0175 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (175 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (175 : State) := by
  intro h
  change graphSmokeNext_s0175 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0175] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (190 : State) <= graphPotential (175 : State)
      decide
  ·
    simp [graphSmokeNext_s0175, h_l0006] at h

theorem valid_s0176 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (176 : State) label t gain ->
      gain + graphPotential t <= graphPotential (176 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0176 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0176] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (191 : State) <= graphPotential (176 : State)
    decide
  ·
    simp [graphSmokeNext_s0176, h_l0006] at h

theorem transition_ok_s0176 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (176 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (176 : State) := by
  intro h
  change graphSmokeNext_s0176 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0176] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (191 : State) <= graphPotential (176 : State)
      decide
  ·
    simp [graphSmokeNext_s0176, h_l0006] at h

theorem valid_s0177 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (177 : State) label t gain ->
      gain + graphPotential t <= graphPotential (177 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0177 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0177] at h
    rcases h with ⟨rfl, rfl⟩
    change (-54 : Int) + graphPotential (188 : State) <= graphPotential (177 : State)
    decide
  ·
    simp [graphSmokeNext_s0177, h_l0012] at h

theorem transition_ok_s0177 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (177 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (177 : State) := by
  intro h
  change graphSmokeNext_s0177 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0177] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-54 : Int) + graphPotential (188 : State) <= graphPotential (177 : State)
      decide
  ·
    simp [graphSmokeNext_s0177, h_l0012] at h

theorem valid_s0178 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (178 : State) label t gain ->
      gain + graphPotential t <= graphPotential (178 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0178 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0178] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (193 : State) <= graphPotential (178 : State)
    decide
  ·
    simp [graphSmokeNext_s0178, h_l0004] at h

theorem transition_ok_s0178 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (178 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (178 : State) := by
  intro h
  change graphSmokeNext_s0178 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0178] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (193 : State) <= graphPotential (178 : State)
      decide
  ·
    simp [graphSmokeNext_s0178, h_l0004] at h

theorem valid_s0179 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (179 : State) label t gain ->
      gain + graphPotential t <= graphPotential (179 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0179 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0179] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (194 : State) <= graphPotential (179 : State)
    decide
  ·
    simp [graphSmokeNext_s0179, h_l0004] at h

theorem transition_ok_s0179 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (179 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (179 : State) := by
  intro h
  change graphSmokeNext_s0179 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0179] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (194 : State) <= graphPotential (179 : State)
      decide
  ·
    simp [graphSmokeNext_s0179, h_l0004] at h

theorem valid_s0180 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (180 : State) label t gain ->
      gain + graphPotential t <= graphPotential (180 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0180 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0180] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (195 : State) <= graphPotential (180 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0180] at h
      rcases h with ⟨rfl, rfl⟩
      change (90 : Int) + graphPotential (192 : State) <= graphPotential (180 : State)
      decide
    ·
      simp [graphSmokeNext_s0180, h_l0002, h_l0013] at h

theorem transition_ok_s0180 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (180 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (180 : State) := by
  intro h
  change graphSmokeNext_s0180 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0180] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (195 : State) <= graphPotential (180 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0180] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (90 : Int) + graphPotential (192 : State) <= graphPotential (180 : State)
        decide
    ·
      simp [graphSmokeNext_s0180, h_l0002, h_l0013] at h

theorem valid_s0181 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (181 : State) label t gain ->
      gain + graphPotential t <= graphPotential (181 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0181 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0181] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (197 : State) <= graphPotential (181 : State)
    decide
  ·
    simp [graphSmokeNext_s0181, h_l0007] at h

theorem transition_ok_s0181 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (181 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (181 : State) := by
  intro h
  change graphSmokeNext_s0181 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0181] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (197 : State) <= graphPotential (181 : State)
      decide
  ·
    simp [graphSmokeNext_s0181, h_l0007] at h

theorem valid_s0182 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (182 : State) label t gain ->
      gain + graphPotential t <= graphPotential (182 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0182 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0182] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (198 : State) <= graphPotential (182 : State)
    decide
  ·
    simp [graphSmokeNext_s0182, h_l0007] at h

theorem transition_ok_s0182 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (182 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (182 : State) := by
  intro h
  change graphSmokeNext_s0182 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0182] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (198 : State) <= graphPotential (182 : State)
      decide
  ·
    simp [graphSmokeNext_s0182, h_l0007] at h

theorem valid_s0183 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (183 : State) label t gain ->
      gain + graphPotential t <= graphPotential (183 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0183 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0183] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (199 : State) <= graphPotential (183 : State)
    decide
  ·
    simp [graphSmokeNext_s0183, h_l0007] at h

theorem transition_ok_s0183 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (183 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (183 : State) := by
  intro h
  change graphSmokeNext_s0183 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0183] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (199 : State) <= graphPotential (183 : State)
      decide
  ·
    simp [graphSmokeNext_s0183, h_l0007] at h

theorem valid_s0184 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (184 : State) label t gain ->
      gain + graphPotential t <= graphPotential (184 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0184 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0184] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (200 : State) <= graphPotential (184 : State)
    decide
  ·
    simp [graphSmokeNext_s0184, h_l0007] at h

theorem transition_ok_s0184 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (184 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (184 : State) := by
  intro h
  change graphSmokeNext_s0184 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0184] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (200 : State) <= graphPotential (184 : State)
      decide
  ·
    simp [graphSmokeNext_s0184, h_l0007] at h

theorem valid_s0185 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (185 : State) label t gain ->
      gain + graphPotential t <= graphPotential (185 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0185 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0185] at h
    rcases h with ⟨rfl, rfl⟩
    change (90 : Int) + graphPotential (196 : State) <= graphPotential (185 : State)
    decide
  ·
    simp [graphSmokeNext_s0185, h_l0012] at h

theorem transition_ok_s0185 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (185 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (185 : State) := by
  intro h
  change graphSmokeNext_s0185 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0185] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (90 : Int) + graphPotential (196 : State) <= graphPotential (185 : State)
      decide
  ·
    simp [graphSmokeNext_s0185, h_l0012] at h

theorem valid_s0186 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (186 : State) label t gain ->
      gain + graphPotential t <= graphPotential (186 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0186 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0186] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (202 : State) <= graphPotential (186 : State)
    decide
  ·
    simp [graphSmokeNext_s0186, h_l0001] at h

theorem transition_ok_s0186 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (186 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (186 : State) := by
  intro h
  change graphSmokeNext_s0186 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0186] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (202 : State) <= graphPotential (186 : State)
      decide
  ·
    simp [graphSmokeNext_s0186, h_l0001] at h

theorem valid_s0187 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (187 : State) label t gain ->
      gain + graphPotential t <= graphPotential (187 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0187 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0187] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (203 : State) <= graphPotential (187 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0187] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (201 : State) <= graphPotential (187 : State)
      decide
    ·
      simp [graphSmokeNext_s0187, h_l0005, h_l0013] at h

theorem transition_ok_s0187 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (187 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (187 : State) := by
  intro h
  change graphSmokeNext_s0187 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0187] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (203 : State) <= graphPotential (187 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0187] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-54 : Int) + graphPotential (201 : State) <= graphPotential (187 : State)
        decide
    ·
      simp [graphSmokeNext_s0187, h_l0005, h_l0013] at h

theorem valid_s0188 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (188 : State) label t gain ->
      gain + graphPotential t <= graphPotential (188 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0188 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0188] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (205 : State) <= graphPotential (188 : State)
    decide
  ·
    simp [graphSmokeNext_s0188, h_l0005] at h

theorem transition_ok_s0188 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (188 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (188 : State) := by
  intro h
  change graphSmokeNext_s0188 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0188] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (205 : State) <= graphPotential (188 : State)
      decide
  ·
    simp [graphSmokeNext_s0188, h_l0005] at h

theorem valid_s0189 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (189 : State) label t gain ->
      gain + graphPotential t <= graphPotential (189 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0189 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0189] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (206 : State) <= graphPotential (189 : State)
    decide
  ·
    simp [graphSmokeNext_s0189, h_l0005] at h

theorem transition_ok_s0189 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (189 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (189 : State) := by
  intro h
  change graphSmokeNext_s0189 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0189] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (206 : State) <= graphPotential (189 : State)
      decide
  ·
    simp [graphSmokeNext_s0189, h_l0005] at h

theorem valid_s0190 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (190 : State) label t gain ->
      gain + graphPotential t <= graphPotential (190 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0190 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0190] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (207 : State) <= graphPotential (190 : State)
    decide
  ·
    simp [graphSmokeNext_s0190, h_l0005] at h

theorem transition_ok_s0190 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (190 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (190 : State) := by
  intro h
  change graphSmokeNext_s0190 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0190] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (207 : State) <= graphPotential (190 : State)
      decide
  ·
    simp [graphSmokeNext_s0190, h_l0005] at h

theorem valid_s0191 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (191 : State) label t gain ->
      gain + graphPotential t <= graphPotential (191 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0191 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0191] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (208 : State) <= graphPotential (191 : State)
    decide
  ·
    simp [graphSmokeNext_s0191, h_l0005] at h

theorem transition_ok_s0191 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (191 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (191 : State) := by
  intro h
  change graphSmokeNext_s0191 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0191] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (208 : State) <= graphPotential (191 : State)
      decide
  ·
    simp [graphSmokeNext_s0191, h_l0005] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 160 <= s) (hhi : s < 192) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0160 h
  · exact valid_s0161 h
  · exact valid_s0162 h
  · exact valid_s0163 h
  · exact valid_s0164 h
  · exact valid_s0165 h
  · exact valid_s0166 h
  · exact valid_s0167 h
  · exact valid_s0168 h
  · exact valid_s0169 h
  · exact valid_s0170 h
  · exact valid_s0171 h
  · exact valid_s0172 h
  · exact valid_s0173 h
  · exact valid_s0174 h
  · exact valid_s0175 h
  · exact valid_s0176 h
  · exact valid_s0177 h
  · exact valid_s0178 h
  · exact valid_s0179 h
  · exact valid_s0180 h
  · exact valid_s0181 h
  · exact valid_s0182 h
  · exact valid_s0183 h
  · exact valid_s0184 h
  · exact valid_s0185 h
  · exact valid_s0186 h
  · exact valid_s0187 h
  · exact valid_s0188 h
  · exact valid_s0189 h
  · exact valid_s0190 h
  · exact valid_s0191 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 160 <= s) (hhi : s < 192) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0160 h
  · exact transition_ok_s0161 h
  · exact transition_ok_s0162 h
  · exact transition_ok_s0163 h
  · exact transition_ok_s0164 h
  · exact transition_ok_s0165 h
  · exact transition_ok_s0166 h
  · exact transition_ok_s0167 h
  · exact transition_ok_s0168 h
  · exact transition_ok_s0169 h
  · exact transition_ok_s0170 h
  · exact transition_ok_s0171 h
  · exact transition_ok_s0172 h
  · exact transition_ok_s0173 h
  · exact transition_ok_s0174 h
  · exact transition_ok_s0175 h
  · exact transition_ok_s0176 h
  · exact transition_ok_s0177 h
  · exact transition_ok_s0178 h
  · exact transition_ok_s0179 h
  · exact transition_ok_s0180 h
  · exact transition_ok_s0181 h
  · exact transition_ok_s0182 h
  · exact transition_ok_s0183 h
  · exact transition_ok_s0184 h
  · exact transition_ok_s0185 h
  · exact transition_ok_s0186 h
  · exact transition_ok_s0187 h
  · exact transition_ok_s0188 h
  · exact transition_ok_s0189 h
  · exact transition_ok_s0190 h
  · exact transition_ok_s0191 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Shard005
