import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Shard003

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Base

/-- Validity shard for source states [96, 128). -/
theorem valid_s0096 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (96 : State) label t gain ->
      gain + graphPotential t <= graphPotential (96 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0096 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0096] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (125 : State) <= graphPotential (96 : State)
    decide
  ·
    simp [graphSmokeNext_s0096, h_l0009] at h

theorem transition_ok_s0096 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (96 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (96 : State) := by
  intro h
  change graphSmokeNext_s0096 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0096] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (125 : State) <= graphPotential (96 : State)
      decide
  ·
    simp [graphSmokeNext_s0096, h_l0009] at h

theorem valid_s0097 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (97 : State) label t gain ->
      gain + graphPotential t <= graphPotential (97 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0097 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0097] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (126 : State) <= graphPotential (97 : State)
    decide
  ·
    simp [graphSmokeNext_s0097, h_l0009] at h

theorem transition_ok_s0097 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (97 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (97 : State) := by
  intro h
  change graphSmokeNext_s0097 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0097] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (126 : State) <= graphPotential (97 : State)
      decide
  ·
    simp [graphSmokeNext_s0097, h_l0009] at h

theorem valid_s0098 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (98 : State) label t gain ->
      gain + graphPotential t <= graphPotential (98 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0098 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0098] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (127 : State) <= graphPotential (98 : State)
    decide
  ·
    simp [graphSmokeNext_s0098, h_l0009] at h

theorem transition_ok_s0098 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (98 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (98 : State) := by
  intro h
  change graphSmokeNext_s0098 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0098] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (127 : State) <= graphPotential (98 : State)
      decide
  ·
    simp [graphSmokeNext_s0098, h_l0009] at h

theorem valid_s0099 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (99 : State) label t gain ->
      gain + graphPotential t <= graphPotential (99 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0099 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0099] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (128 : State) <= graphPotential (99 : State)
    decide
  ·
    simp [graphSmokeNext_s0099, h_l0009] at h

theorem transition_ok_s0099 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (99 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (99 : State) := by
  intro h
  change graphSmokeNext_s0099 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0099] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (128 : State) <= graphPotential (99 : State)
      decide
  ·
    simp [graphSmokeNext_s0099, h_l0009] at h

theorem valid_s0100 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (100 : State) label t gain ->
      gain + graphPotential t <= graphPotential (100 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0100 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0100] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (129 : State) <= graphPotential (100 : State)
    decide
  ·
    simp [graphSmokeNext_s0100, h_l0009] at h

theorem transition_ok_s0100 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (100 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (100 : State) := by
  intro h
  change graphSmokeNext_s0100 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0100] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (129 : State) <= graphPotential (100 : State)
      decide
  ·
    simp [graphSmokeNext_s0100, h_l0009] at h

theorem valid_s0101 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (101 : State) label t gain ->
      gain + graphPotential t <= graphPotential (101 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0101 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0101] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (130 : State) <= graphPotential (101 : State)
    decide
  ·
    simp [graphSmokeNext_s0101, h_l0009] at h

theorem transition_ok_s0101 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (101 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (101 : State) := by
  intro h
  change graphSmokeNext_s0101 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0101] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (130 : State) <= graphPotential (101 : State)
      decide
  ·
    simp [graphSmokeNext_s0101, h_l0009] at h

theorem valid_s0102 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (102 : State) label t gain ->
      gain + graphPotential t <= graphPotential (102 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0102 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0102] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (131 : State) <= graphPotential (102 : State)
    decide
  ·
    simp [graphSmokeNext_s0102, h_l0009] at h

theorem transition_ok_s0102 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (102 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (102 : State) := by
  intro h
  change graphSmokeNext_s0102 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0102] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (131 : State) <= graphPotential (102 : State)
      decide
  ·
    simp [graphSmokeNext_s0102, h_l0009] at h

theorem valid_s0103 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (103 : State) label t gain ->
      gain + graphPotential t <= graphPotential (103 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0103 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0103] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (132 : State) <= graphPotential (103 : State)
    decide
  ·
    simp [graphSmokeNext_s0103, h_l0009] at h

theorem transition_ok_s0103 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (103 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (103 : State) := by
  intro h
  change graphSmokeNext_s0103 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0103] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (132 : State) <= graphPotential (103 : State)
      decide
  ·
    simp [graphSmokeNext_s0103, h_l0009] at h

theorem valid_s0104 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (104 : State) label t gain ->
      gain + graphPotential t <= graphPotential (104 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0104 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0104] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (133 : State) <= graphPotential (104 : State)
    decide
  ·
    simp [graphSmokeNext_s0104, h_l0009] at h

theorem transition_ok_s0104 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (104 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (104 : State) := by
  intro h
  change graphSmokeNext_s0104 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0104] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (133 : State) <= graphPotential (104 : State)
      decide
  ·
    simp [graphSmokeNext_s0104, h_l0009] at h

theorem valid_s0105 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (105 : State) label t gain ->
      gain + graphPotential t <= graphPotential (105 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0105 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0105] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (134 : State) <= graphPotential (105 : State)
    decide
  ·
    simp [graphSmokeNext_s0105, h_l0009] at h

theorem transition_ok_s0105 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (105 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (105 : State) := by
  intro h
  change graphSmokeNext_s0105 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0105] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (134 : State) <= graphPotential (105 : State)
      decide
  ·
    simp [graphSmokeNext_s0105, h_l0009] at h

theorem valid_s0106 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (106 : State) label t gain ->
      gain + graphPotential t <= graphPotential (106 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0106 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0106] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (135 : State) <= graphPotential (106 : State)
    decide
  ·
    simp [graphSmokeNext_s0106, h_l0009] at h

theorem transition_ok_s0106 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (106 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (106 : State) := by
  intro h
  change graphSmokeNext_s0106 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0106] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (135 : State) <= graphPotential (106 : State)
      decide
  ·
    simp [graphSmokeNext_s0106, h_l0009] at h

theorem valid_s0107 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (107 : State) label t gain ->
      gain + graphPotential t <= graphPotential (107 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0107 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0107] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (136 : State) <= graphPotential (107 : State)
    decide
  ·
    simp [graphSmokeNext_s0107, h_l0009] at h

theorem transition_ok_s0107 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (107 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (107 : State) := by
  intro h
  change graphSmokeNext_s0107 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0107] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (136 : State) <= graphPotential (107 : State)
      decide
  ·
    simp [graphSmokeNext_s0107, h_l0009] at h

theorem valid_s0108 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (108 : State) label t gain ->
      gain + graphPotential t <= graphPotential (108 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0108 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0108] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (137 : State) <= graphPotential (108 : State)
    decide
  ·
    simp [graphSmokeNext_s0108, h_l0009] at h

theorem transition_ok_s0108 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (108 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (108 : State) := by
  intro h
  change graphSmokeNext_s0108 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0108] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (137 : State) <= graphPotential (108 : State)
      decide
  ·
    simp [graphSmokeNext_s0108, h_l0009] at h

theorem valid_s0109 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (109 : State) label t gain ->
      gain + graphPotential t <= graphPotential (109 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0109 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0109] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (138 : State) <= graphPotential (109 : State)
    decide
  ·
    simp [graphSmokeNext_s0109, h_l0009] at h

theorem transition_ok_s0109 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (109 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (109 : State) := by
  intro h
  change graphSmokeNext_s0109 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0109] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (138 : State) <= graphPotential (109 : State)
      decide
  ·
    simp [graphSmokeNext_s0109, h_l0009] at h

theorem valid_s0110 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (110 : State) label t gain ->
      gain + graphPotential t <= graphPotential (110 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0110 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0110] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (139 : State) <= graphPotential (110 : State)
    decide
  ·
    simp [graphSmokeNext_s0110, h_l0009] at h

theorem transition_ok_s0110 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (110 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (110 : State) := by
  intro h
  change graphSmokeNext_s0110 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0110] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (139 : State) <= graphPotential (110 : State)
      decide
  ·
    simp [graphSmokeNext_s0110, h_l0009] at h

theorem valid_s0111 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (111 : State) label t gain ->
      gain + graphPotential t <= graphPotential (111 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0111 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0111] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (140 : State) <= graphPotential (111 : State)
    decide
  ·
    simp [graphSmokeNext_s0111, h_l0009] at h

theorem transition_ok_s0111 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (111 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (111 : State) := by
  intro h
  change graphSmokeNext_s0111 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0111] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (140 : State) <= graphPotential (111 : State)
      decide
  ·
    simp [graphSmokeNext_s0111, h_l0009] at h

theorem valid_s0112 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (112 : State) label t gain ->
      gain + graphPotential t <= graphPotential (112 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0112 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0112] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (141 : State) <= graphPotential (112 : State)
    decide
  ·
    simp [graphSmokeNext_s0112, h_l0009] at h

theorem transition_ok_s0112 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (112 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (112 : State) := by
  intro h
  change graphSmokeNext_s0112 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0112] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (141 : State) <= graphPotential (112 : State)
      decide
  ·
    simp [graphSmokeNext_s0112, h_l0009] at h

theorem valid_s0113 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (113 : State) label t gain ->
      gain + graphPotential t <= graphPotential (113 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0113 label = some (t, gain) at h
  simp [graphSmokeNext_s0113] at h

theorem transition_ok_s0113 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (113 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (113 : State) := by
  intro h
  change graphSmokeNext_s0113 label = some (t, gain) at h
  simp [graphSmokeNext_s0113] at h

theorem valid_s0114 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (114 : State) label t gain ->
      gain + graphPotential t <= graphPotential (114 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0114 label = some (t, gain) at h
  simp [graphSmokeNext_s0114] at h

theorem transition_ok_s0114 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (114 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (114 : State) := by
  intro h
  change graphSmokeNext_s0114 label = some (t, gain) at h
  simp [graphSmokeNext_s0114] at h

theorem valid_s0115 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (115 : State) label t gain ->
      gain + graphPotential t <= graphPotential (115 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0115 label = some (t, gain) at h
  simp [graphSmokeNext_s0115] at h

theorem transition_ok_s0115 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (115 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (115 : State) := by
  intro h
  change graphSmokeNext_s0115 label = some (t, gain) at h
  simp [graphSmokeNext_s0115] at h

theorem valid_s0116 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (116 : State) label t gain ->
      gain + graphPotential t <= graphPotential (116 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0116 label = some (t, gain) at h
  simp [graphSmokeNext_s0116] at h

theorem transition_ok_s0116 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (116 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (116 : State) := by
  intro h
  change graphSmokeNext_s0116 label = some (t, gain) at h
  simp [graphSmokeNext_s0116] at h

theorem valid_s0117 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (117 : State) label t gain ->
      gain + graphPotential t <= graphPotential (117 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0117 label = some (t, gain) at h
  simp [graphSmokeNext_s0117] at h

theorem transition_ok_s0117 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (117 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (117 : State) := by
  intro h
  change graphSmokeNext_s0117 label = some (t, gain) at h
  simp [graphSmokeNext_s0117] at h

theorem valid_s0118 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (118 : State) label t gain ->
      gain + graphPotential t <= graphPotential (118 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0118 label = some (t, gain) at h
  simp [graphSmokeNext_s0118] at h

theorem transition_ok_s0118 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (118 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (118 : State) := by
  intro h
  change graphSmokeNext_s0118 label = some (t, gain) at h
  simp [graphSmokeNext_s0118] at h

theorem valid_s0119 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (119 : State) label t gain ->
      gain + graphPotential t <= graphPotential (119 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0119 label = some (t, gain) at h
  simp [graphSmokeNext_s0119] at h

theorem transition_ok_s0119 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (119 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (119 : State) := by
  intro h
  change graphSmokeNext_s0119 label = some (t, gain) at h
  simp [graphSmokeNext_s0119] at h

theorem valid_s0120 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (120 : State) label t gain ->
      gain + graphPotential t <= graphPotential (120 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0120 label = some (t, gain) at h
  simp [graphSmokeNext_s0120] at h

theorem transition_ok_s0120 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (120 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (120 : State) := by
  intro h
  change graphSmokeNext_s0120 label = some (t, gain) at h
  simp [graphSmokeNext_s0120] at h

theorem valid_s0121 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (121 : State) label t gain ->
      gain + graphPotential t <= graphPotential (121 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0121 label = some (t, gain) at h
  simp [graphSmokeNext_s0121] at h

theorem transition_ok_s0121 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (121 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (121 : State) := by
  intro h
  change graphSmokeNext_s0121 label = some (t, gain) at h
  simp [graphSmokeNext_s0121] at h

theorem valid_s0122 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (122 : State) label t gain ->
      gain + graphPotential t <= graphPotential (122 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0122 label = some (t, gain) at h
  simp [graphSmokeNext_s0122] at h

theorem transition_ok_s0122 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (122 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (122 : State) := by
  intro h
  change graphSmokeNext_s0122 label = some (t, gain) at h
  simp [graphSmokeNext_s0122] at h

theorem valid_s0123 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (123 : State) label t gain ->
      gain + graphPotential t <= graphPotential (123 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0123 label = some (t, gain) at h
  simp [graphSmokeNext_s0123] at h

theorem transition_ok_s0123 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (123 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (123 : State) := by
  intro h
  change graphSmokeNext_s0123 label = some (t, gain) at h
  simp [graphSmokeNext_s0123] at h

theorem valid_s0124 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (124 : State) label t gain ->
      gain + graphPotential t <= graphPotential (124 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0124 label = some (t, gain) at h
  simp [graphSmokeNext_s0124] at h

theorem transition_ok_s0124 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (124 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (124 : State) := by
  intro h
  change graphSmokeNext_s0124 label = some (t, gain) at h
  simp [graphSmokeNext_s0124] at h

theorem valid_s0125 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (125 : State) label t gain ->
      gain + graphPotential t <= graphPotential (125 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0125 label = some (t, gain) at h
  simp [graphSmokeNext_s0125] at h

theorem transition_ok_s0125 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (125 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (125 : State) := by
  intro h
  change graphSmokeNext_s0125 label = some (t, gain) at h
  simp [graphSmokeNext_s0125] at h

theorem valid_s0126 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (126 : State) label t gain ->
      gain + graphPotential t <= graphPotential (126 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0126 label = some (t, gain) at h
  simp [graphSmokeNext_s0126] at h

theorem transition_ok_s0126 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (126 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (126 : State) := by
  intro h
  change graphSmokeNext_s0126 label = some (t, gain) at h
  simp [graphSmokeNext_s0126] at h

theorem valid_s0127 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (127 : State) label t gain ->
      gain + graphPotential t <= graphPotential (127 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0127 label = some (t, gain) at h
  simp [graphSmokeNext_s0127] at h

theorem transition_ok_s0127 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (127 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (127 : State) := by
  intro h
  change graphSmokeNext_s0127 label = some (t, gain) at h
  simp [graphSmokeNext_s0127] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 96 <= s) (hhi : s < 128) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0096 h
  · exact valid_s0097 h
  · exact valid_s0098 h
  · exact valid_s0099 h
  · exact valid_s0100 h
  · exact valid_s0101 h
  · exact valid_s0102 h
  · exact valid_s0103 h
  · exact valid_s0104 h
  · exact valid_s0105 h
  · exact valid_s0106 h
  · exact valid_s0107 h
  · exact valid_s0108 h
  · exact valid_s0109 h
  · exact valid_s0110 h
  · exact valid_s0111 h
  · exact valid_s0112 h
  · exact valid_s0113 h
  · exact valid_s0114 h
  · exact valid_s0115 h
  · exact valid_s0116 h
  · exact valid_s0117 h
  · exact valid_s0118 h
  · exact valid_s0119 h
  · exact valid_s0120 h
  · exact valid_s0121 h
  · exact valid_s0122 h
  · exact valid_s0123 h
  · exact valid_s0124 h
  · exact valid_s0125 h
  · exact valid_s0126 h
  · exact valid_s0127 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 96 <= s) (hhi : s < 128) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0096 h
  · exact transition_ok_s0097 h
  · exact transition_ok_s0098 h
  · exact transition_ok_s0099 h
  · exact transition_ok_s0100 h
  · exact transition_ok_s0101 h
  · exact transition_ok_s0102 h
  · exact transition_ok_s0103 h
  · exact transition_ok_s0104 h
  · exact transition_ok_s0105 h
  · exact transition_ok_s0106 h
  · exact transition_ok_s0107 h
  · exact transition_ok_s0108 h
  · exact transition_ok_s0109 h
  · exact transition_ok_s0110 h
  · exact transition_ok_s0111 h
  · exact transition_ok_s0112 h
  · exact transition_ok_s0113 h
  · exact transition_ok_s0114 h
  · exact transition_ok_s0115 h
  · exact transition_ok_s0116 h
  · exact transition_ok_s0117 h
  · exact transition_ok_s0118 h
  · exact transition_ok_s0119 h
  · exact transition_ok_s0120 h
  · exact transition_ok_s0121 h
  · exact transition_ok_s0122 h
  · exact transition_ok_s0123 h
  · exact transition_ok_s0124 h
  · exact transition_ok_s0125 h
  · exact transition_ok_s0126 h
  · exact transition_ok_s0127 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Shard003
