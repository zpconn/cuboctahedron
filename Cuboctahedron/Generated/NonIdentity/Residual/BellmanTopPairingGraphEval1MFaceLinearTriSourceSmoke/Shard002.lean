import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Shard002

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Base

/-- Validity shard for source states [64, 96). -/
theorem valid_s0064 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (64 : State) label t gain ->
      gain + graphPotential t <= graphPotential (64 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0064 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0064] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (103 : State) <= graphPotential (64 : State)
    decide
  ·
    simp [graphSmokeNext_s0064, h_l0001] at h

theorem transition_ok_s0064 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (64 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (64 : State) := by
  intro h
  change graphSmokeNext_s0064 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0064] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (103 : State) <= graphPotential (64 : State)
      decide
  ·
    simp [graphSmokeNext_s0064, h_l0001] at h

theorem valid_s0065 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (65 : State) label t gain ->
      gain + graphPotential t <= graphPotential (65 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0065 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0065] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (104 : State) <= graphPotential (65 : State)
    decide
  ·
    simp [graphSmokeNext_s0065, h_l0001] at h

theorem transition_ok_s0065 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (65 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (65 : State) := by
  intro h
  change graphSmokeNext_s0065 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0065] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (104 : State) <= graphPotential (65 : State)
      decide
  ·
    simp [graphSmokeNext_s0065, h_l0001] at h

theorem valid_s0066 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (66 : State) label t gain ->
      gain + graphPotential t <= graphPotential (66 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0066 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0066] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (105 : State) <= graphPotential (66 : State)
    decide
  ·
    simp [graphSmokeNext_s0066, h_l0001] at h

theorem transition_ok_s0066 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (66 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (66 : State) := by
  intro h
  change graphSmokeNext_s0066 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0066] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (105 : State) <= graphPotential (66 : State)
      decide
  ·
    simp [graphSmokeNext_s0066, h_l0001] at h

theorem valid_s0067 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (67 : State) label t gain ->
      gain + graphPotential t <= graphPotential (67 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0067 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0067] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (106 : State) <= graphPotential (67 : State)
    decide
  ·
    simp [graphSmokeNext_s0067, h_l0001] at h

theorem transition_ok_s0067 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (67 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (67 : State) := by
  intro h
  change graphSmokeNext_s0067 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0067] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (106 : State) <= graphPotential (67 : State)
      decide
  ·
    simp [graphSmokeNext_s0067, h_l0001] at h

theorem valid_s0068 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (68 : State) label t gain ->
      gain + graphPotential t <= graphPotential (68 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0068 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0068] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (111 : State) <= graphPotential (68 : State)
    decide
  ·
    simp [graphSmokeNext_s0068, h_l0001] at h

theorem transition_ok_s0068 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (68 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (68 : State) := by
  intro h
  change graphSmokeNext_s0068 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0068] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (111 : State) <= graphPotential (68 : State)
      decide
  ·
    simp [graphSmokeNext_s0068, h_l0001] at h

theorem valid_s0069 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (69 : State) label t gain ->
      gain + graphPotential t <= graphPotential (69 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0069 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0069] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (112 : State) <= graphPotential (69 : State)
    decide
  ·
    simp [graphSmokeNext_s0069, h_l0001] at h

theorem transition_ok_s0069 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (69 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (69 : State) := by
  intro h
  change graphSmokeNext_s0069 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0069] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (112 : State) <= graphPotential (69 : State)
      decide
  ·
    simp [graphSmokeNext_s0069, h_l0001] at h

theorem valid_s0070 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (70 : State) label t gain ->
      gain + graphPotential t <= graphPotential (70 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0070 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0070] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (86 : State) <= graphPotential (70 : State)
    decide
  ·
    simp [graphSmokeNext_s0070, h_l0013] at h

theorem transition_ok_s0070 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (70 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (70 : State) := by
  intro h
  change graphSmokeNext_s0070 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0070] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (86 : State) <= graphPotential (70 : State)
      decide
  ·
    simp [graphSmokeNext_s0070, h_l0013] at h

theorem valid_s0071 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (71 : State) label t gain ->
      gain + graphPotential t <= graphPotential (71 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0071 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0071] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (87 : State) <= graphPotential (71 : State)
    decide
  ·
    simp [graphSmokeNext_s0071, h_l0013] at h

theorem transition_ok_s0071 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (71 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (71 : State) := by
  intro h
  change graphSmokeNext_s0071 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0071] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (87 : State) <= graphPotential (71 : State)
      decide
  ·
    simp [graphSmokeNext_s0071, h_l0013] at h

theorem valid_s0072 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (72 : State) label t gain ->
      gain + graphPotential t <= graphPotential (72 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0072 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0072] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (100 : State) <= graphPotential (72 : State)
    decide
  ·
    simp [graphSmokeNext_s0072, h_l0013] at h

theorem transition_ok_s0072 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (72 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (72 : State) := by
  intro h
  change graphSmokeNext_s0072 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0072] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (100 : State) <= graphPotential (72 : State)
      decide
  ·
    simp [graphSmokeNext_s0072, h_l0013] at h

theorem valid_s0073 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (73 : State) label t gain ->
      gain + graphPotential t <= graphPotential (73 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0073 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0073] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (107 : State) <= graphPotential (73 : State)
    decide
  ·
    simp [graphSmokeNext_s0073, h_l0013] at h

theorem transition_ok_s0073 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (73 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (73 : State) := by
  intro h
  change graphSmokeNext_s0073 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0073] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (107 : State) <= graphPotential (73 : State)
      decide
  ·
    simp [graphSmokeNext_s0073, h_l0013] at h

theorem valid_s0074 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (74 : State) label t gain ->
      gain + graphPotential t <= graphPotential (74 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0074 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0074] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (108 : State) <= graphPotential (74 : State)
    decide
  ·
    simp [graphSmokeNext_s0074, h_l0013] at h

theorem transition_ok_s0074 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (74 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (74 : State) := by
  intro h
  change graphSmokeNext_s0074 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0074] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (108 : State) <= graphPotential (74 : State)
      decide
  ·
    simp [graphSmokeNext_s0074, h_l0013] at h

theorem valid_s0075 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (75 : State) label t gain ->
      gain + graphPotential t <= graphPotential (75 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0075 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0075] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (109 : State) <= graphPotential (75 : State)
    decide
  ·
    simp [graphSmokeNext_s0075, h_l0013] at h

theorem transition_ok_s0075 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (75 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (75 : State) := by
  intro h
  change graphSmokeNext_s0075 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0075] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-10 : Int) + graphPotential (109 : State) <= graphPotential (75 : State)
      decide
  ·
    simp [graphSmokeNext_s0075, h_l0013] at h

theorem valid_s0076 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (76 : State) label t gain ->
      gain + graphPotential t <= graphPotential (76 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0076 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0076] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (84 : State) <= graphPotential (76 : State)
    decide
  ·
    simp [graphSmokeNext_s0076, h_l0011] at h

theorem transition_ok_s0076 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (76 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (76 : State) := by
  intro h
  change graphSmokeNext_s0076 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0076] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (84 : State) <= graphPotential (76 : State)
      decide
  ·
    simp [graphSmokeNext_s0076, h_l0011] at h

theorem valid_s0077 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (77 : State) label t gain ->
      gain + graphPotential t <= graphPotential (77 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0077 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0077] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (86 : State) <= graphPotential (77 : State)
    decide
  ·
    simp [graphSmokeNext_s0077, h_l0011] at h

theorem transition_ok_s0077 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (77 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (77 : State) := by
  intro h
  change graphSmokeNext_s0077 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0077] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (86 : State) <= graphPotential (77 : State)
      decide
  ·
    simp [graphSmokeNext_s0077, h_l0011] at h

theorem valid_s0078 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (78 : State) label t gain ->
      gain + graphPotential t <= graphPotential (78 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0078 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0078] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (89 : State) <= graphPotential (78 : State)
    decide
  ·
    simp [graphSmokeNext_s0078, h_l0011] at h

theorem transition_ok_s0078 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (78 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (78 : State) := by
  intro h
  change graphSmokeNext_s0078 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0078] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (89 : State) <= graphPotential (78 : State)
      decide
  ·
    simp [graphSmokeNext_s0078, h_l0011] at h

theorem valid_s0079 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (79 : State) label t gain ->
      gain + graphPotential t <= graphPotential (79 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0079 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0079] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (91 : State) <= graphPotential (79 : State)
    decide
  ·
    simp [graphSmokeNext_s0079, h_l0011] at h

theorem transition_ok_s0079 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (79 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (79 : State) := by
  intro h
  change graphSmokeNext_s0079 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0079] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (91 : State) <= graphPotential (79 : State)
      decide
  ·
    simp [graphSmokeNext_s0079, h_l0011] at h

theorem valid_s0080 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (80 : State) label t gain ->
      gain + graphPotential t <= graphPotential (80 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0080 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0080] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (93 : State) <= graphPotential (80 : State)
    decide
  ·
    simp [graphSmokeNext_s0080, h_l0011] at h

theorem transition_ok_s0080 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (80 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (80 : State) := by
  intro h
  change graphSmokeNext_s0080 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0080] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (93 : State) <= graphPotential (80 : State)
      decide
  ·
    simp [graphSmokeNext_s0080, h_l0011] at h

theorem valid_s0081 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (81 : State) label t gain ->
      gain + graphPotential t <= graphPotential (81 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0081 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0081] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (95 : State) <= graphPotential (81 : State)
    decide
  ·
    simp [graphSmokeNext_s0081, h_l0011] at h

theorem transition_ok_s0081 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (81 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (81 : State) := by
  intro h
  change graphSmokeNext_s0081 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0081] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (95 : State) <= graphPotential (81 : State)
      decide
  ·
    simp [graphSmokeNext_s0081, h_l0011] at h

theorem valid_s0082 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (82 : State) label t gain ->
      gain + graphPotential t <= graphPotential (82 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0082 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0082] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (108 : State) <= graphPotential (82 : State)
    decide
  ·
    simp [graphSmokeNext_s0082, h_l0011] at h

theorem transition_ok_s0082 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (82 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (82 : State) := by
  intro h
  change graphSmokeNext_s0082 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0082] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (108 : State) <= graphPotential (82 : State)
      decide
  ·
    simp [graphSmokeNext_s0082, h_l0011] at h

theorem valid_s0083 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (83 : State) label t gain ->
      gain + graphPotential t <= graphPotential (83 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0083 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0083] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (110 : State) <= graphPotential (83 : State)
    decide
  ·
    simp [graphSmokeNext_s0083, h_l0011] at h

theorem transition_ok_s0083 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (83 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (83 : State) := by
  intro h
  change graphSmokeNext_s0083 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0083] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (110 : State) <= graphPotential (83 : State)
      decide
  ·
    simp [graphSmokeNext_s0083, h_l0011] at h

theorem valid_s0084 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (84 : State) label t gain ->
      gain + graphPotential t <= graphPotential (84 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0084 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0084] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (113 : State) <= graphPotential (84 : State)
    decide
  ·
    simp [graphSmokeNext_s0084, h_l0009] at h

theorem transition_ok_s0084 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (84 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (84 : State) := by
  intro h
  change graphSmokeNext_s0084 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0084] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (113 : State) <= graphPotential (84 : State)
      decide
  ·
    simp [graphSmokeNext_s0084, h_l0009] at h

theorem valid_s0085 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (85 : State) label t gain ->
      gain + graphPotential t <= graphPotential (85 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0085 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0085] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (114 : State) <= graphPotential (85 : State)
    decide
  ·
    simp [graphSmokeNext_s0085, h_l0009] at h

theorem transition_ok_s0085 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (85 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (85 : State) := by
  intro h
  change graphSmokeNext_s0085 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0085] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (114 : State) <= graphPotential (85 : State)
      decide
  ·
    simp [graphSmokeNext_s0085, h_l0009] at h

theorem valid_s0086 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (86 : State) label t gain ->
      gain + graphPotential t <= graphPotential (86 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0086 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0086] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (115 : State) <= graphPotential (86 : State)
    decide
  ·
    simp [graphSmokeNext_s0086, h_l0009] at h

theorem transition_ok_s0086 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (86 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (86 : State) := by
  intro h
  change graphSmokeNext_s0086 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0086] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (115 : State) <= graphPotential (86 : State)
      decide
  ·
    simp [graphSmokeNext_s0086, h_l0009] at h

theorem valid_s0087 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (87 : State) label t gain ->
      gain + graphPotential t <= graphPotential (87 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0087 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0087] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (116 : State) <= graphPotential (87 : State)
    decide
  ·
    simp [graphSmokeNext_s0087, h_l0009] at h

theorem transition_ok_s0087 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (87 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (87 : State) := by
  intro h
  change graphSmokeNext_s0087 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0087] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (116 : State) <= graphPotential (87 : State)
      decide
  ·
    simp [graphSmokeNext_s0087, h_l0009] at h

theorem valid_s0088 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (88 : State) label t gain ->
      gain + graphPotential t <= graphPotential (88 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0088 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0088] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (117 : State) <= graphPotential (88 : State)
    decide
  ·
    simp [graphSmokeNext_s0088, h_l0009] at h

theorem transition_ok_s0088 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (88 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (88 : State) := by
  intro h
  change graphSmokeNext_s0088 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0088] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (117 : State) <= graphPotential (88 : State)
      decide
  ·
    simp [graphSmokeNext_s0088, h_l0009] at h

theorem valid_s0089 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (89 : State) label t gain ->
      gain + graphPotential t <= graphPotential (89 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0089 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0089] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (118 : State) <= graphPotential (89 : State)
    decide
  ·
    simp [graphSmokeNext_s0089, h_l0009] at h

theorem transition_ok_s0089 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (89 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (89 : State) := by
  intro h
  change graphSmokeNext_s0089 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0089] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (118 : State) <= graphPotential (89 : State)
      decide
  ·
    simp [graphSmokeNext_s0089, h_l0009] at h

theorem valid_s0090 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (90 : State) label t gain ->
      gain + graphPotential t <= graphPotential (90 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0090 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0090] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (119 : State) <= graphPotential (90 : State)
    decide
  ·
    simp [graphSmokeNext_s0090, h_l0009] at h

theorem transition_ok_s0090 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (90 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (90 : State) := by
  intro h
  change graphSmokeNext_s0090 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0090] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (119 : State) <= graphPotential (90 : State)
      decide
  ·
    simp [graphSmokeNext_s0090, h_l0009] at h

theorem valid_s0091 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (91 : State) label t gain ->
      gain + graphPotential t <= graphPotential (91 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0091 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0091] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (120 : State) <= graphPotential (91 : State)
    decide
  ·
    simp [graphSmokeNext_s0091, h_l0009] at h

theorem transition_ok_s0091 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (91 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (91 : State) := by
  intro h
  change graphSmokeNext_s0091 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0091] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (120 : State) <= graphPotential (91 : State)
      decide
  ·
    simp [graphSmokeNext_s0091, h_l0009] at h

theorem valid_s0092 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (92 : State) label t gain ->
      gain + graphPotential t <= graphPotential (92 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0092 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0092] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (121 : State) <= graphPotential (92 : State)
    decide
  ·
    simp [graphSmokeNext_s0092, h_l0009] at h

theorem transition_ok_s0092 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (92 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (92 : State) := by
  intro h
  change graphSmokeNext_s0092 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0092] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (121 : State) <= graphPotential (92 : State)
      decide
  ·
    simp [graphSmokeNext_s0092, h_l0009] at h

theorem valid_s0093 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (93 : State) label t gain ->
      gain + graphPotential t <= graphPotential (93 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0093 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0093] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (122 : State) <= graphPotential (93 : State)
    decide
  ·
    simp [graphSmokeNext_s0093, h_l0009] at h

theorem transition_ok_s0093 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (93 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (93 : State) := by
  intro h
  change graphSmokeNext_s0093 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0093] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (122 : State) <= graphPotential (93 : State)
      decide
  ·
    simp [graphSmokeNext_s0093, h_l0009] at h

theorem valid_s0094 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (94 : State) label t gain ->
      gain + graphPotential t <= graphPotential (94 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0094 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0094] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (123 : State) <= graphPotential (94 : State)
    decide
  ·
    simp [graphSmokeNext_s0094, h_l0009] at h

theorem transition_ok_s0094 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (94 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (94 : State) := by
  intro h
  change graphSmokeNext_s0094 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0094] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (123 : State) <= graphPotential (94 : State)
      decide
  ·
    simp [graphSmokeNext_s0094, h_l0009] at h

theorem valid_s0095 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (95 : State) label t gain ->
      gain + graphPotential t <= graphPotential (95 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0095 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0095] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (124 : State) <= graphPotential (95 : State)
    decide
  ·
    simp [graphSmokeNext_s0095, h_l0009] at h

theorem transition_ok_s0095 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (95 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (95 : State) := by
  intro h
  change graphSmokeNext_s0095 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0095] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (124 : State) <= graphPotential (95 : State)
      decide
  ·
    simp [graphSmokeNext_s0095, h_l0009] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 64 <= s) (hhi : s < 96) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0064 h
  · exact valid_s0065 h
  · exact valid_s0066 h
  · exact valid_s0067 h
  · exact valid_s0068 h
  · exact valid_s0069 h
  · exact valid_s0070 h
  · exact valid_s0071 h
  · exact valid_s0072 h
  · exact valid_s0073 h
  · exact valid_s0074 h
  · exact valid_s0075 h
  · exact valid_s0076 h
  · exact valid_s0077 h
  · exact valid_s0078 h
  · exact valid_s0079 h
  · exact valid_s0080 h
  · exact valid_s0081 h
  · exact valid_s0082 h
  · exact valid_s0083 h
  · exact valid_s0084 h
  · exact valid_s0085 h
  · exact valid_s0086 h
  · exact valid_s0087 h
  · exact valid_s0088 h
  · exact valid_s0089 h
  · exact valid_s0090 h
  · exact valid_s0091 h
  · exact valid_s0092 h
  · exact valid_s0093 h
  · exact valid_s0094 h
  · exact valid_s0095 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 64 <= s) (hhi : s < 96) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0064 h
  · exact transition_ok_s0065 h
  · exact transition_ok_s0066 h
  · exact transition_ok_s0067 h
  · exact transition_ok_s0068 h
  · exact transition_ok_s0069 h
  · exact transition_ok_s0070 h
  · exact transition_ok_s0071 h
  · exact transition_ok_s0072 h
  · exact transition_ok_s0073 h
  · exact transition_ok_s0074 h
  · exact transition_ok_s0075 h
  · exact transition_ok_s0076 h
  · exact transition_ok_s0077 h
  · exact transition_ok_s0078 h
  · exact transition_ok_s0079 h
  · exact transition_ok_s0080 h
  · exact transition_ok_s0081 h
  · exact transition_ok_s0082 h
  · exact transition_ok_s0083 h
  · exact transition_ok_s0084 h
  · exact transition_ok_s0085 h
  · exact transition_ok_s0086 h
  · exact transition_ok_s0087 h
  · exact transition_ok_s0088 h
  · exact transition_ok_s0089 h
  · exact transition_ok_s0090 h
  · exact transition_ok_s0091 h
  · exact transition_ok_s0092 h
  · exact transition_ok_s0093 h
  · exact transition_ok_s0094 h
  · exact transition_ok_s0095 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Shard002
