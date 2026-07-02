import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Shard004

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Base

/-- Validity shard for source states [128, 160). -/
theorem valid_s0128 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (128 : State) label t gain ->
      gain + graphPotential t <= graphPotential (128 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0128 label = some (t, gain) at h
  simp [graphSmokeNext_s0128] at h

theorem transition_ok_s0128 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (128 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (128 : State) := by
  intro h
  change graphSmokeNext_s0128 label = some (t, gain) at h
  simp [graphSmokeNext_s0128] at h

theorem valid_s0129 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (129 : State) label t gain ->
      gain + graphPotential t <= graphPotential (129 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0129 label = some (t, gain) at h
  simp [graphSmokeNext_s0129] at h

theorem transition_ok_s0129 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (129 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (129 : State) := by
  intro h
  change graphSmokeNext_s0129 label = some (t, gain) at h
  simp [graphSmokeNext_s0129] at h

theorem valid_s0130 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (130 : State) label t gain ->
      gain + graphPotential t <= graphPotential (130 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0130 label = some (t, gain) at h
  simp [graphSmokeNext_s0130] at h

theorem transition_ok_s0130 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (130 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (130 : State) := by
  intro h
  change graphSmokeNext_s0130 label = some (t, gain) at h
  simp [graphSmokeNext_s0130] at h

theorem valid_s0131 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (131 : State) label t gain ->
      gain + graphPotential t <= graphPotential (131 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0131 label = some (t, gain) at h
  simp [graphSmokeNext_s0131] at h

theorem transition_ok_s0131 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (131 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (131 : State) := by
  intro h
  change graphSmokeNext_s0131 label = some (t, gain) at h
  simp [graphSmokeNext_s0131] at h

theorem valid_s0132 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (132 : State) label t gain ->
      gain + graphPotential t <= graphPotential (132 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0132 label = some (t, gain) at h
  simp [graphSmokeNext_s0132] at h

theorem transition_ok_s0132 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (132 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (132 : State) := by
  intro h
  change graphSmokeNext_s0132 label = some (t, gain) at h
  simp [graphSmokeNext_s0132] at h

theorem valid_s0133 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (133 : State) label t gain ->
      gain + graphPotential t <= graphPotential (133 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0133 label = some (t, gain) at h
  simp [graphSmokeNext_s0133] at h

theorem transition_ok_s0133 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (133 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (133 : State) := by
  intro h
  change graphSmokeNext_s0133 label = some (t, gain) at h
  simp [graphSmokeNext_s0133] at h

theorem valid_s0134 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (134 : State) label t gain ->
      gain + graphPotential t <= graphPotential (134 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0134 label = some (t, gain) at h
  simp [graphSmokeNext_s0134] at h

theorem transition_ok_s0134 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (134 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (134 : State) := by
  intro h
  change graphSmokeNext_s0134 label = some (t, gain) at h
  simp [graphSmokeNext_s0134] at h

theorem valid_s0135 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (135 : State) label t gain ->
      gain + graphPotential t <= graphPotential (135 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0135 label = some (t, gain) at h
  simp [graphSmokeNext_s0135] at h

theorem transition_ok_s0135 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (135 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (135 : State) := by
  intro h
  change graphSmokeNext_s0135 label = some (t, gain) at h
  simp [graphSmokeNext_s0135] at h

theorem valid_s0136 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (136 : State) label t gain ->
      gain + graphPotential t <= graphPotential (136 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0136 label = some (t, gain) at h
  simp [graphSmokeNext_s0136] at h

theorem transition_ok_s0136 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (136 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (136 : State) := by
  intro h
  change graphSmokeNext_s0136 label = some (t, gain) at h
  simp [graphSmokeNext_s0136] at h

theorem valid_s0137 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (137 : State) label t gain ->
      gain + graphPotential t <= graphPotential (137 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0137 label = some (t, gain) at h
  simp [graphSmokeNext_s0137] at h

theorem transition_ok_s0137 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (137 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (137 : State) := by
  intro h
  change graphSmokeNext_s0137 label = some (t, gain) at h
  simp [graphSmokeNext_s0137] at h

theorem valid_s0138 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (138 : State) label t gain ->
      gain + graphPotential t <= graphPotential (138 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0138 label = some (t, gain) at h
  simp [graphSmokeNext_s0138] at h

theorem transition_ok_s0138 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (138 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (138 : State) := by
  intro h
  change graphSmokeNext_s0138 label = some (t, gain) at h
  simp [graphSmokeNext_s0138] at h

theorem valid_s0139 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (139 : State) label t gain ->
      gain + graphPotential t <= graphPotential (139 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0139 label = some (t, gain) at h
  simp [graphSmokeNext_s0139] at h

theorem transition_ok_s0139 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (139 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (139 : State) := by
  intro h
  change graphSmokeNext_s0139 label = some (t, gain) at h
  simp [graphSmokeNext_s0139] at h

theorem valid_s0140 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (140 : State) label t gain ->
      gain + graphPotential t <= graphPotential (140 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0140 label = some (t, gain) at h
  simp [graphSmokeNext_s0140] at h

theorem transition_ok_s0140 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (140 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (140 : State) := by
  intro h
  change graphSmokeNext_s0140 label = some (t, gain) at h
  simp [graphSmokeNext_s0140] at h

theorem valid_s0141 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (141 : State) label t gain ->
      gain + graphPotential t <= graphPotential (141 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0141 label = some (t, gain) at h
  simp [graphSmokeNext_s0141] at h

theorem transition_ok_s0141 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (141 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (141 : State) := by
  intro h
  change graphSmokeNext_s0141 label = some (t, gain) at h
  simp [graphSmokeNext_s0141] at h

theorem valid_s0142 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (142 : State) label t gain ->
      gain + graphPotential t <= graphPotential (142 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0142 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0142] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (143 : State) <= graphPotential (142 : State)
    decide
  ·
    simp [graphSmokeNext_s0142, h_l0010] at h

theorem transition_ok_s0142 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (142 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (142 : State) := by
  intro h
  change graphSmokeNext_s0142 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0142] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (143 : State) <= graphPotential (142 : State)
      decide
  ·
    simp [graphSmokeNext_s0142, h_l0010] at h

theorem valid_s0143 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (143 : State) label t gain ->
      gain + graphPotential t <= graphPotential (143 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0143 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0143] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (146 : State) <= graphPotential (143 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0143] at h
      rcases h with ⟨rfl, rfl⟩
      change (-73 : Int) + graphPotential (144 : State) <= graphPotential (143 : State)
      decide
    ·
      by_cases h_l0012 : label = (12 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0143] at h
        rcases h with ⟨rfl, rfl⟩
        change (-10 : Int) + graphPotential (145 : State) <= graphPotential (143 : State)
        decide
      ·
        simp [graphSmokeNext_s0143, h_l0002, h_l0011, h_l0012] at h

theorem transition_ok_s0143 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (143 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (143 : State) := by
  intro h
  change graphSmokeNext_s0143 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0143] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (146 : State) <= graphPotential (143 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0143] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-73 : Int) + graphPotential (144 : State) <= graphPotential (143 : State)
        decide
    ·
      by_cases h_l0012 : label = (12 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0143] at h
        rcases h with ⟨rfl, rfl⟩
        constructor
        · decide
        · change (-10 : Int) + graphPotential (145 : State) <= graphPotential (143 : State)
          decide
      ·
        simp [graphSmokeNext_s0143, h_l0002, h_l0011, h_l0012] at h

theorem valid_s0144 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (144 : State) label t gain ->
      gain + graphPotential t <= graphPotential (144 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0144 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0144] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (148 : State) <= graphPotential (144 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0144] at h
      rcases h with ⟨rfl, rfl⟩
      change (-10 : Int) + graphPotential (147 : State) <= graphPotential (144 : State)
      decide
    ·
      simp [graphSmokeNext_s0144, h_l0000, h_l0012] at h

theorem transition_ok_s0144 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (144 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (144 : State) := by
  intro h
  change graphSmokeNext_s0144 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0144] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (148 : State) <= graphPotential (144 : State)
      decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0144] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-10 : Int) + graphPotential (147 : State) <= graphPotential (144 : State)
        decide
    ·
      simp [graphSmokeNext_s0144, h_l0000, h_l0012] at h

theorem valid_s0145 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (145 : State) label t gain ->
      gain + graphPotential t <= graphPotential (145 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0145 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0145] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (151 : State) <= graphPotential (145 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0145] at h
      rcases h with ⟨rfl, rfl⟩
      change (-73 : Int) + graphPotential (147 : State) <= graphPotential (145 : State)
      decide
    ·
      by_cases h_l0013 : label = (13 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0145] at h
        rcases h with ⟨rfl, rfl⟩
        change (-10 : Int) + graphPotential (149 : State) <= graphPotential (145 : State)
        decide
      ·
        simp [graphSmokeNext_s0145, h_l0003, h_l0011, h_l0013] at h

theorem transition_ok_s0145 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (145 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (145 : State) := by
  intro h
  change graphSmokeNext_s0145 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0145] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (151 : State) <= graphPotential (145 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0145] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-73 : Int) + graphPotential (147 : State) <= graphPotential (145 : State)
        decide
    ·
      by_cases h_l0013 : label = (13 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0145] at h
        rcases h with ⟨rfl, rfl⟩
        constructor
        · decide
        · change (-10 : Int) + graphPotential (149 : State) <= graphPotential (145 : State)
          decide
      ·
        simp [graphSmokeNext_s0145, h_l0003, h_l0011, h_l0013] at h

theorem valid_s0146 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (146 : State) label t gain ->
      gain + graphPotential t <= graphPotential (146 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0146 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0146] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (152 : State) <= graphPotential (146 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0146] at h
      rcases h with ⟨rfl, rfl⟩
      change (114 : Int) + graphPotential (150 : State) <= graphPotential (146 : State)
      decide
    ·
      simp [graphSmokeNext_s0146, h_l0006, h_l0012] at h

theorem transition_ok_s0146 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (146 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (146 : State) := by
  intro h
  change graphSmokeNext_s0146 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0146] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (152 : State) <= graphPotential (146 : State)
      decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0146] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (114 : Int) + graphPotential (150 : State) <= graphPotential (146 : State)
        decide
    ·
      simp [graphSmokeNext_s0146, h_l0006, h_l0012] at h

theorem valid_s0147 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (147 : State) label t gain ->
      gain + graphPotential t <= graphPotential (147 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0147 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0147] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (155 : State) <= graphPotential (147 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0147] at h
      rcases h with ⟨rfl, rfl⟩
      change (-10 : Int) + graphPotential (153 : State) <= graphPotential (147 : State)
      decide
    ·
      simp [graphSmokeNext_s0147, h_l0001, h_l0013] at h

theorem transition_ok_s0147 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (147 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (147 : State) := by
  intro h
  change graphSmokeNext_s0147 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0147] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (155 : State) <= graphPotential (147 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0147] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-10 : Int) + graphPotential (153 : State) <= graphPotential (147 : State)
        decide
    ·
      simp [graphSmokeNext_s0147, h_l0001, h_l0013] at h

theorem valid_s0148 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (148 : State) label t gain ->
      gain + graphPotential t <= graphPotential (148 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0148 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0148] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (156 : State) <= graphPotential (148 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0148] at h
      rcases h with ⟨rfl, rfl⟩
      change (114 : Int) + graphPotential (154 : State) <= graphPotential (148 : State)
      decide
    ·
      simp [graphSmokeNext_s0148, h_l0004, h_l0012] at h

theorem transition_ok_s0148 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (148 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (148 : State) := by
  intro h
  change graphSmokeNext_s0148 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0148] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (156 : State) <= graphPotential (148 : State)
      decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0148] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (114 : Int) + graphPotential (154 : State) <= graphPotential (148 : State)
        decide
    ·
      simp [graphSmokeNext_s0148, h_l0004, h_l0012] at h

theorem valid_s0149 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (149 : State) label t gain ->
      gain + graphPotential t <= graphPotential (149 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0149 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0149] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (158 : State) <= graphPotential (149 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0149] at h
      rcases h with ⟨rfl, rfl⟩
      change (-73 : Int) + graphPotential (153 : State) <= graphPotential (149 : State)
      decide
    ·
      simp [graphSmokeNext_s0149, h_l0002, h_l0011] at h

theorem transition_ok_s0149 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (149 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (149 : State) := by
  intro h
  change graphSmokeNext_s0149 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0149] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (158 : State) <= graphPotential (149 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0149] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-73 : Int) + graphPotential (153 : State) <= graphPotential (149 : State)
        decide
    ·
      simp [graphSmokeNext_s0149, h_l0002, h_l0011] at h

theorem valid_s0150 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (150 : State) label t gain ->
      gain + graphPotential t <= graphPotential (150 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0150 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0150] at h
    rcases h with ⟨rfl, rfl⟩
    change (114 : Int) + graphPotential (157 : State) <= graphPotential (150 : State)
    decide
  ·
    simp [graphSmokeNext_s0150, h_l0013] at h

theorem transition_ok_s0150 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (150 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (150 : State) := by
  intro h
  change graphSmokeNext_s0150 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0150] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (114 : Int) + graphPotential (157 : State) <= graphPotential (150 : State)
      decide
  ·
    simp [graphSmokeNext_s0150, h_l0013] at h

theorem valid_s0151 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (151 : State) label t gain ->
      gain + graphPotential t <= graphPotential (151 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0151 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0151] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (160 : State) <= graphPotential (151 : State)
    decide
  ·
    simp [graphSmokeNext_s0151, h_l0007] at h

theorem transition_ok_s0151 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (151 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (151 : State) := by
  intro h
  change graphSmokeNext_s0151 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0151] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (160 : State) <= graphPotential (151 : State)
      decide
  ·
    simp [graphSmokeNext_s0151, h_l0007] at h

theorem valid_s0152 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (152 : State) label t gain ->
      gain + graphPotential t <= graphPotential (152 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0152 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0152] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (161 : State) <= graphPotential (152 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0152] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (159 : State) <= graphPotential (152 : State)
      decide
    ·
      simp [graphSmokeNext_s0152, h_l0004, h_l0013] at h

theorem transition_ok_s0152 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (152 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (152 : State) := by
  intro h
  change graphSmokeNext_s0152 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0152] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (161 : State) <= graphPotential (152 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0152] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-18 : Int) + graphPotential (159 : State) <= graphPotential (152 : State)
        decide
    ·
      simp [graphSmokeNext_s0152, h_l0004, h_l0013] at h

theorem valid_s0153 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (153 : State) label t gain ->
      gain + graphPotential t <= graphPotential (153 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0153 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0153] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (163 : State) <= graphPotential (153 : State)
    decide
  ·
    simp [graphSmokeNext_s0153, h_l0000] at h

theorem transition_ok_s0153 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (153 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (153 : State) := by
  intro h
  change graphSmokeNext_s0153 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0153] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (163 : State) <= graphPotential (153 : State)
      decide
  ·
    simp [graphSmokeNext_s0153, h_l0000] at h

theorem valid_s0154 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (154 : State) label t gain ->
      gain + graphPotential t <= graphPotential (154 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0154 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0154] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (165 : State) <= graphPotential (154 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0154] at h
      rcases h with ⟨rfl, rfl⟩
      change (114 : Int) + graphPotential (162 : State) <= graphPotential (154 : State)
      decide
    ·
      simp [graphSmokeNext_s0154, h_l0005, h_l0013] at h

theorem transition_ok_s0154 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (154 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (154 : State) := by
  intro h
  change graphSmokeNext_s0154 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0154] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (165 : State) <= graphPotential (154 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0154] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (114 : Int) + graphPotential (162 : State) <= graphPotential (154 : State)
        decide
    ·
      simp [graphSmokeNext_s0154, h_l0005, h_l0013] at h

theorem valid_s0155 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (155 : State) label t gain ->
      gain + graphPotential t <= graphPotential (155 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0155 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0155] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (166 : State) <= graphPotential (155 : State)
    decide
  ·
    simp [graphSmokeNext_s0155, h_l0005] at h

theorem transition_ok_s0155 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (155 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (155 : State) := by
  intro h
  change graphSmokeNext_s0155 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0155] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (166 : State) <= graphPotential (155 : State)
      decide
  ·
    simp [graphSmokeNext_s0155, h_l0005] at h

theorem valid_s0156 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (156 : State) label t gain ->
      gain + graphPotential t <= graphPotential (156 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0156 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0156] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (167 : State) <= graphPotential (156 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0156] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (164 : State) <= graphPotential (156 : State)
      decide
    ·
      simp [graphSmokeNext_s0156, h_l0006, h_l0013] at h

theorem transition_ok_s0156 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (156 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (156 : State) := by
  intro h
  change graphSmokeNext_s0156 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0156] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (167 : State) <= graphPotential (156 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0156] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-18 : Int) + graphPotential (164 : State) <= graphPotential (156 : State)
        decide
    ·
      simp [graphSmokeNext_s0156, h_l0006, h_l0013] at h

theorem valid_s0157 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (157 : State) label t gain ->
      gain + graphPotential t <= graphPotential (157 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0157 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0157] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (169 : State) <= graphPotential (157 : State)
    decide
  ·
    simp [graphSmokeNext_s0157, h_l0006] at h

theorem transition_ok_s0157 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (157 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (157 : State) := by
  intro h
  change graphSmokeNext_s0157 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0157] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (169 : State) <= graphPotential (157 : State)
      decide
  ·
    simp [graphSmokeNext_s0157, h_l0006] at h

theorem valid_s0158 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (158 : State) label t gain ->
      gain + graphPotential t <= graphPotential (158 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0158 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0158] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (170 : State) <= graphPotential (158 : State)
    decide
  ·
    simp [graphSmokeNext_s0158, h_l0006] at h

theorem transition_ok_s0158 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (158 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (158 : State) := by
  intro h
  change graphSmokeNext_s0158 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0158] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (170 : State) <= graphPotential (158 : State)
      decide
  ·
    simp [graphSmokeNext_s0158, h_l0006] at h

theorem valid_s0159 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (159 : State) label t gain ->
      gain + graphPotential t <= graphPotential (159 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0159 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0159] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (168 : State) <= graphPotential (159 : State)
    decide
  ·
    simp [graphSmokeNext_s0159, h_l0012] at h

theorem transition_ok_s0159 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (159 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (159 : State) := by
  intro h
  change graphSmokeNext_s0159 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0159] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-18 : Int) + graphPotential (168 : State) <= graphPotential (159 : State)
      decide
  ·
    simp [graphSmokeNext_s0159, h_l0012] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 128 <= s) (hhi : s < 160) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0128 h
  · exact valid_s0129 h
  · exact valid_s0130 h
  · exact valid_s0131 h
  · exact valid_s0132 h
  · exact valid_s0133 h
  · exact valid_s0134 h
  · exact valid_s0135 h
  · exact valid_s0136 h
  · exact valid_s0137 h
  · exact valid_s0138 h
  · exact valid_s0139 h
  · exact valid_s0140 h
  · exact valid_s0141 h
  · exact valid_s0142 h
  · exact valid_s0143 h
  · exact valid_s0144 h
  · exact valid_s0145 h
  · exact valid_s0146 h
  · exact valid_s0147 h
  · exact valid_s0148 h
  · exact valid_s0149 h
  · exact valid_s0150 h
  · exact valid_s0151 h
  · exact valid_s0152 h
  · exact valid_s0153 h
  · exact valid_s0154 h
  · exact valid_s0155 h
  · exact valid_s0156 h
  · exact valid_s0157 h
  · exact valid_s0158 h
  · exact valid_s0159 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 128 <= s) (hhi : s < 160) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0128 h
  · exact transition_ok_s0129 h
  · exact transition_ok_s0130 h
  · exact transition_ok_s0131 h
  · exact transition_ok_s0132 h
  · exact transition_ok_s0133 h
  · exact transition_ok_s0134 h
  · exact transition_ok_s0135 h
  · exact transition_ok_s0136 h
  · exact transition_ok_s0137 h
  · exact transition_ok_s0138 h
  · exact transition_ok_s0139 h
  · exact transition_ok_s0140 h
  · exact transition_ok_s0141 h
  · exact transition_ok_s0142 h
  · exact transition_ok_s0143 h
  · exact transition_ok_s0144 h
  · exact transition_ok_s0145 h
  · exact transition_ok_s0146 h
  · exact transition_ok_s0147 h
  · exact transition_ok_s0148 h
  · exact transition_ok_s0149 h
  · exact transition_ok_s0150 h
  · exact transition_ok_s0151 h
  · exact transition_ok_s0152 h
  · exact transition_ok_s0153 h
  · exact transition_ok_s0154 h
  · exact transition_ok_s0155 h
  · exact transition_ok_s0156 h
  · exact transition_ok_s0157 h
  · exact transition_ok_s0158 h
  · exact transition_ok_s0159 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Shard004
