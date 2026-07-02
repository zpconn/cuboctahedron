import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Shard001

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Base

/-- Validity shard for source states [32, 64). -/
theorem valid_s0032 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (32 : State) label t gain ->
      gain + graphPotential t <= graphPotential (32 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0032 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0032] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (64 : State) <= graphPotential (32 : State)
    decide
  ·
    simp [graphSmokeNext_s0032, h_l0003] at h

theorem transition_ok_s0032 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (32 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (32 : State) := by
  intro h
  change graphSmokeNext_s0032 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0032] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (64 : State) <= graphPotential (32 : State)
      decide
  ·
    simp [graphSmokeNext_s0032, h_l0003] at h

theorem valid_s0033 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (33 : State) label t gain ->
      gain + graphPotential t <= graphPotential (33 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0033 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0033] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (65 : State) <= graphPotential (33 : State)
    decide
  ·
    simp [graphSmokeNext_s0033, h_l0003] at h

theorem transition_ok_s0033 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (33 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (33 : State) := by
  intro h
  change graphSmokeNext_s0033 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0033] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (65 : State) <= graphPotential (33 : State)
      decide
  ·
    simp [graphSmokeNext_s0033, h_l0003] at h

theorem valid_s0034 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (34 : State) label t gain ->
      gain + graphPotential t <= graphPotential (34 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0034 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0034] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (67 : State) <= graphPotential (34 : State)
    decide
  ·
    simp [graphSmokeNext_s0034, h_l0003] at h

theorem transition_ok_s0034 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (34 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (34 : State) := by
  intro h
  change graphSmokeNext_s0034 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0034] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (67 : State) <= graphPotential (34 : State)
      decide
  ·
    simp [graphSmokeNext_s0034, h_l0003] at h

theorem valid_s0035 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (35 : State) label t gain ->
      gain + graphPotential t <= graphPotential (35 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0035 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0035] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (68 : State) <= graphPotential (35 : State)
    decide
  ·
    simp [graphSmokeNext_s0035, h_l0003] at h

theorem transition_ok_s0035 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (35 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (35 : State) := by
  intro h
  change graphSmokeNext_s0035 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0035] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (68 : State) <= graphPotential (35 : State)
      decide
  ·
    simp [graphSmokeNext_s0035, h_l0003] at h

theorem valid_s0036 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (36 : State) label t gain ->
      gain + graphPotential t <= graphPotential (36 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0036 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0036] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (69 : State) <= graphPotential (36 : State)
    decide
  ·
    simp [graphSmokeNext_s0036, h_l0003] at h

theorem transition_ok_s0036 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (36 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (36 : State) := by
  intro h
  change graphSmokeNext_s0036 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0036] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (69 : State) <= graphPotential (36 : State)
      decide
  ·
    simp [graphSmokeNext_s0036, h_l0003] at h

theorem valid_s0037 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (37 : State) label t gain ->
      gain + graphPotential t <= graphPotential (37 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0037 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0037] at h
    rcases h with ⟨rfl, rfl⟩
    change (114 : Int) + graphPotential (54 : State) <= graphPotential (37 : State)
    decide
  ·
    simp [graphSmokeNext_s0037, h_l0013] at h

theorem transition_ok_s0037 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (37 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (37 : State) := by
  intro h
  change graphSmokeNext_s0037 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0037] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (114 : Int) + graphPotential (54 : State) <= graphPotential (37 : State)
      decide
  ·
    simp [graphSmokeNext_s0037, h_l0013] at h

theorem valid_s0038 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (38 : State) label t gain ->
      gain + graphPotential t <= graphPotential (38 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0038 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0038] at h
    rcases h with ⟨rfl, rfl⟩
    change (114 : Int) + graphPotential (62 : State) <= graphPotential (38 : State)
    decide
  ·
    simp [graphSmokeNext_s0038, h_l0013] at h

theorem transition_ok_s0038 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (38 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (38 : State) := by
  intro h
  change graphSmokeNext_s0038 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0038] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (114 : Int) + graphPotential (62 : State) <= graphPotential (38 : State)
      decide
  ·
    simp [graphSmokeNext_s0038, h_l0013] at h

theorem valid_s0039 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (39 : State) label t gain ->
      gain + graphPotential t <= graphPotential (39 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0039 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0039] at h
    rcases h with ⟨rfl, rfl⟩
    change (114 : Int) + graphPotential (66 : State) <= graphPotential (39 : State)
    decide
  ·
    simp [graphSmokeNext_s0039, h_l0013] at h

theorem transition_ok_s0039 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (39 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (39 : State) := by
  intro h
  change graphSmokeNext_s0039 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0039] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (114 : Int) + graphPotential (66 : State) <= graphPotential (39 : State)
      decide
  ·
    simp [graphSmokeNext_s0039, h_l0013] at h

theorem valid_s0040 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (40 : State) label t gain ->
      gain + graphPotential t <= graphPotential (40 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0040 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0040] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (73 : State) <= graphPotential (40 : State)
    decide
  ·
    simp [graphSmokeNext_s0040, h_l0000] at h

theorem transition_ok_s0040 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (40 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (40 : State) := by
  intro h
  change graphSmokeNext_s0040 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0040] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (73 : State) <= graphPotential (40 : State)
      decide
  ·
    simp [graphSmokeNext_s0040, h_l0000] at h

theorem valid_s0041 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (41 : State) label t gain ->
      gain + graphPotential t <= graphPotential (41 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0041 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0041] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (75 : State) <= graphPotential (41 : State)
    decide
  ·
    simp [graphSmokeNext_s0041, h_l0000] at h

theorem transition_ok_s0041 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (41 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (41 : State) := by
  intro h
  change graphSmokeNext_s0041 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0041] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (75 : State) <= graphPotential (41 : State)
      decide
  ·
    simp [graphSmokeNext_s0041, h_l0000] at h

theorem valid_s0042 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (42 : State) label t gain ->
      gain + graphPotential t <= graphPotential (42 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0042 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0042] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (70 : State) <= graphPotential (42 : State)
    decide
  ·
    simp [graphSmokeNext_s0042, h_l0012] at h

theorem transition_ok_s0042 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (42 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (42 : State) := by
  intro h
  change graphSmokeNext_s0042 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0042] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (70 : State) <= graphPotential (42 : State)
      decide
  ·
    simp [graphSmokeNext_s0042, h_l0012] at h

theorem valid_s0043 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (43 : State) label t gain ->
      gain + graphPotential t <= graphPotential (43 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0043 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0043] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (71 : State) <= graphPotential (43 : State)
    decide
  ·
    simp [graphSmokeNext_s0043, h_l0012] at h

theorem transition_ok_s0043 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (43 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (43 : State) := by
  intro h
  change graphSmokeNext_s0043 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0043] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (71 : State) <= graphPotential (43 : State)
      decide
  ·
    simp [graphSmokeNext_s0043, h_l0012] at h

theorem valid_s0044 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (44 : State) label t gain ->
      gain + graphPotential t <= graphPotential (44 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0044 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0044] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (72 : State) <= graphPotential (44 : State)
    decide
  ·
    simp [graphSmokeNext_s0044, h_l0012] at h

theorem transition_ok_s0044 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (44 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (44 : State) := by
  intro h
  change graphSmokeNext_s0044 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0044] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (72 : State) <= graphPotential (44 : State)
      decide
  ·
    simp [graphSmokeNext_s0044, h_l0012] at h

theorem valid_s0045 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (45 : State) label t gain ->
      gain + graphPotential t <= graphPotential (45 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0045 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0045] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (76 : State) <= graphPotential (45 : State)
    decide
  ·
    simp [graphSmokeNext_s0045, h_l0003] at h

theorem transition_ok_s0045 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (45 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (45 : State) := by
  intro h
  change graphSmokeNext_s0045 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0045] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (76 : State) <= graphPotential (45 : State)
      decide
  ·
    simp [graphSmokeNext_s0045, h_l0003] at h

theorem valid_s0046 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (46 : State) label t gain ->
      gain + graphPotential t <= graphPotential (46 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0046 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0046] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (78 : State) <= graphPotential (46 : State)
    decide
  ·
    simp [graphSmokeNext_s0046, h_l0003] at h

theorem transition_ok_s0046 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (46 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (46 : State) := by
  intro h
  change graphSmokeNext_s0046 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0046] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (78 : State) <= graphPotential (46 : State)
      decide
  ·
    simp [graphSmokeNext_s0046, h_l0003] at h

theorem valid_s0047 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (47 : State) label t gain ->
      gain + graphPotential t <= graphPotential (47 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0047 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0047] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (79 : State) <= graphPotential (47 : State)
    decide
  ·
    simp [graphSmokeNext_s0047, h_l0003] at h

theorem transition_ok_s0047 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (47 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (47 : State) := by
  intro h
  change graphSmokeNext_s0047 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0047] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (79 : State) <= graphPotential (47 : State)
      decide
  ·
    simp [graphSmokeNext_s0047, h_l0003] at h

theorem valid_s0048 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (48 : State) label t gain ->
      gain + graphPotential t <= graphPotential (48 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0048 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0048] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (80 : State) <= graphPotential (48 : State)
    decide
  ·
    simp [graphSmokeNext_s0048, h_l0003] at h

theorem transition_ok_s0048 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (48 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (48 : State) := by
  intro h
  change graphSmokeNext_s0048 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0048] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (80 : State) <= graphPotential (48 : State)
      decide
  ·
    simp [graphSmokeNext_s0048, h_l0003] at h

theorem valid_s0049 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (49 : State) label t gain ->
      gain + graphPotential t <= graphPotential (49 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0049 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0049] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (81 : State) <= graphPotential (49 : State)
    decide
  ·
    simp [graphSmokeNext_s0049, h_l0003] at h

theorem transition_ok_s0049 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (49 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (49 : State) := by
  intro h
  change graphSmokeNext_s0049 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0049] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (81 : State) <= graphPotential (49 : State)
      decide
  ·
    simp [graphSmokeNext_s0049, h_l0003] at h

theorem valid_s0050 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (50 : State) label t gain ->
      gain + graphPotential t <= graphPotential (50 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0050 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0050] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (83 : State) <= graphPotential (50 : State)
    decide
  ·
    simp [graphSmokeNext_s0050, h_l0003] at h

theorem transition_ok_s0050 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (50 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (50 : State) := by
  intro h
  change graphSmokeNext_s0050 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0050] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (83 : State) <= graphPotential (50 : State)
      decide
  ·
    simp [graphSmokeNext_s0050, h_l0003] at h

theorem valid_s0051 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (51 : State) label t gain ->
      gain + graphPotential t <= graphPotential (51 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0051 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0051] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (70 : State) <= graphPotential (51 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0051] at h
      rcases h with ⟨rfl, rfl⟩
      change (-10 : Int) + graphPotential (77 : State) <= graphPotential (51 : State)
      decide
    ·
      simp [graphSmokeNext_s0051, h_l0011, h_l0013] at h

theorem transition_ok_s0051 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (51 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (51 : State) := by
  intro h
  change graphSmokeNext_s0051 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0051] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (70 : State) <= graphPotential (51 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0051] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-10 : Int) + graphPotential (77 : State) <= graphPotential (51 : State)
        decide
    ·
      simp [graphSmokeNext_s0051, h_l0011, h_l0013] at h

theorem valid_s0052 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (52 : State) label t gain ->
      gain + graphPotential t <= graphPotential (52 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0052 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0052] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (74 : State) <= graphPotential (52 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0052] at h
      rcases h with ⟨rfl, rfl⟩
      change (-10 : Int) + graphPotential (82 : State) <= graphPotential (52 : State)
      decide
    ·
      simp [graphSmokeNext_s0052, h_l0011, h_l0013] at h

theorem transition_ok_s0052 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (52 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (52 : State) := by
  intro h
  change graphSmokeNext_s0052 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0052] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (74 : State) <= graphPotential (52 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0052] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-10 : Int) + graphPotential (82 : State) <= graphPotential (52 : State)
        decide
    ·
      simp [graphSmokeNext_s0052, h_l0011, h_l0013] at h

theorem valid_s0053 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (53 : State) label t gain ->
      gain + graphPotential t <= graphPotential (53 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0053 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0053] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (85 : State) <= graphPotential (53 : State)
    decide
  ·
    simp [graphSmokeNext_s0053, h_l0001] at h

theorem transition_ok_s0053 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (53 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (53 : State) := by
  intro h
  change graphSmokeNext_s0053 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0053] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (85 : State) <= graphPotential (53 : State)
      decide
  ·
    simp [graphSmokeNext_s0053, h_l0001] at h

theorem valid_s0054 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (54 : State) label t gain ->
      gain + graphPotential t <= graphPotential (54 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0054 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0054] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (88 : State) <= graphPotential (54 : State)
    decide
  ·
    simp [graphSmokeNext_s0054, h_l0001] at h

theorem transition_ok_s0054 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (54 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (54 : State) := by
  intro h
  change graphSmokeNext_s0054 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0054] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (88 : State) <= graphPotential (54 : State)
      decide
  ·
    simp [graphSmokeNext_s0054, h_l0001] at h

theorem valid_s0055 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (55 : State) label t gain ->
      gain + graphPotential t <= graphPotential (55 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0055 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0055] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (90 : State) <= graphPotential (55 : State)
    decide
  ·
    simp [graphSmokeNext_s0055, h_l0001] at h

theorem transition_ok_s0055 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (55 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (55 : State) := by
  intro h
  change graphSmokeNext_s0055 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0055] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (90 : State) <= graphPotential (55 : State)
      decide
  ·
    simp [graphSmokeNext_s0055, h_l0001] at h

theorem valid_s0056 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (56 : State) label t gain ->
      gain + graphPotential t <= graphPotential (56 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0056 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0056] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (92 : State) <= graphPotential (56 : State)
    decide
  ·
    simp [graphSmokeNext_s0056, h_l0001] at h

theorem transition_ok_s0056 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (56 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (56 : State) := by
  intro h
  change graphSmokeNext_s0056 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0056] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (92 : State) <= graphPotential (56 : State)
      decide
  ·
    simp [graphSmokeNext_s0056, h_l0001] at h

theorem valid_s0057 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (57 : State) label t gain ->
      gain + graphPotential t <= graphPotential (57 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0057 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0057] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (94 : State) <= graphPotential (57 : State)
    decide
  ·
    simp [graphSmokeNext_s0057, h_l0001] at h

theorem transition_ok_s0057 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (57 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (57 : State) := by
  intro h
  change graphSmokeNext_s0057 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0057] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (94 : State) <= graphPotential (57 : State)
      decide
  ·
    simp [graphSmokeNext_s0057, h_l0001] at h

theorem valid_s0058 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (58 : State) label t gain ->
      gain + graphPotential t <= graphPotential (58 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0058 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0058] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (96 : State) <= graphPotential (58 : State)
    decide
  ·
    simp [graphSmokeNext_s0058, h_l0001] at h

theorem transition_ok_s0058 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (58 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (58 : State) := by
  intro h
  change graphSmokeNext_s0058 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0058] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (96 : State) <= graphPotential (58 : State)
      decide
  ·
    simp [graphSmokeNext_s0058, h_l0001] at h

theorem valid_s0059 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (59 : State) label t gain ->
      gain + graphPotential t <= graphPotential (59 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0059 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0059] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (97 : State) <= graphPotential (59 : State)
    decide
  ·
    simp [graphSmokeNext_s0059, h_l0001] at h

theorem transition_ok_s0059 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (59 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (59 : State) := by
  intro h
  change graphSmokeNext_s0059 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0059] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (97 : State) <= graphPotential (59 : State)
      decide
  ·
    simp [graphSmokeNext_s0059, h_l0001] at h

theorem valid_s0060 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (60 : State) label t gain ->
      gain + graphPotential t <= graphPotential (60 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0060 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0060] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (98 : State) <= graphPotential (60 : State)
    decide
  ·
    simp [graphSmokeNext_s0060, h_l0001] at h

theorem transition_ok_s0060 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (60 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (60 : State) := by
  intro h
  change graphSmokeNext_s0060 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0060] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (98 : State) <= graphPotential (60 : State)
      decide
  ·
    simp [graphSmokeNext_s0060, h_l0001] at h

theorem valid_s0061 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (61 : State) label t gain ->
      gain + graphPotential t <= graphPotential (61 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0061 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0061] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (99 : State) <= graphPotential (61 : State)
    decide
  ·
    simp [graphSmokeNext_s0061, h_l0001] at h

theorem transition_ok_s0061 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (61 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (61 : State) := by
  intro h
  change graphSmokeNext_s0061 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0061] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (99 : State) <= graphPotential (61 : State)
      decide
  ·
    simp [graphSmokeNext_s0061, h_l0001] at h

theorem valid_s0062 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (62 : State) label t gain ->
      gain + graphPotential t <= graphPotential (62 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0062 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0062] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (101 : State) <= graphPotential (62 : State)
    decide
  ·
    simp [graphSmokeNext_s0062, h_l0001] at h

theorem transition_ok_s0062 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (62 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (62 : State) := by
  intro h
  change graphSmokeNext_s0062 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0062] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (101 : State) <= graphPotential (62 : State)
      decide
  ·
    simp [graphSmokeNext_s0062, h_l0001] at h

theorem valid_s0063 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (63 : State) label t gain ->
      gain + graphPotential t <= graphPotential (63 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0063 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0063] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (102 : State) <= graphPotential (63 : State)
    decide
  ·
    simp [graphSmokeNext_s0063, h_l0001] at h

theorem transition_ok_s0063 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (63 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (63 : State) := by
  intro h
  change graphSmokeNext_s0063 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0063] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (102 : State) <= graphPotential (63 : State)
      decide
  ·
    simp [graphSmokeNext_s0063, h_l0001] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 32 <= s) (hhi : s < 64) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
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

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 32 <= s) (hhi : s < 64) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0032 h
  · exact transition_ok_s0033 h
  · exact transition_ok_s0034 h
  · exact transition_ok_s0035 h
  · exact transition_ok_s0036 h
  · exact transition_ok_s0037 h
  · exact transition_ok_s0038 h
  · exact transition_ok_s0039 h
  · exact transition_ok_s0040 h
  · exact transition_ok_s0041 h
  · exact transition_ok_s0042 h
  · exact transition_ok_s0043 h
  · exact transition_ok_s0044 h
  · exact transition_ok_s0045 h
  · exact transition_ok_s0046 h
  · exact transition_ok_s0047 h
  · exact transition_ok_s0048 h
  · exact transition_ok_s0049 h
  · exact transition_ok_s0050 h
  · exact transition_ok_s0051 h
  · exact transition_ok_s0052 h
  · exact transition_ok_s0053 h
  · exact transition_ok_s0054 h
  · exact transition_ok_s0055 h
  · exact transition_ok_s0056 h
  · exact transition_ok_s0057 h
  · exact transition_ok_s0058 h
  · exact transition_ok_s0059 h
  · exact transition_ok_s0060 h
  · exact transition_ok_s0061 h
  · exact transition_ok_s0062 h
  · exact transition_ok_s0063 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Shard001
