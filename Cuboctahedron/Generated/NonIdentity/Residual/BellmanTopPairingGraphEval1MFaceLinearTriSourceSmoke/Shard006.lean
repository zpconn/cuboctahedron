import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Shard006

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Base

/-- Validity shard for source states [192, 223). -/
theorem valid_s0192 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (192 : State) label t gain ->
      gain + graphPotential t <= graphPotential (192 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0192 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0192] at h
    rcases h with ⟨rfl, rfl⟩
    change (90 : Int) + graphPotential (204 : State) <= graphPotential (192 : State)
    decide
  ·
    simp [graphSmokeNext_s0192, h_l0012] at h

theorem transition_ok_s0192 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (192 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (192 : State) := by
  intro h
  change graphSmokeNext_s0192 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0192] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (90 : Int) + graphPotential (204 : State) <= graphPotential (192 : State)
      decide
  ·
    simp [graphSmokeNext_s0192, h_l0012] at h

theorem valid_s0193 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (193 : State) label t gain ->
      gain + graphPotential t <= graphPotential (193 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0193 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0193] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (210 : State) <= graphPotential (193 : State)
    decide
  ·
    simp [graphSmokeNext_s0193, h_l0003] at h

theorem transition_ok_s0193 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (193 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (193 : State) := by
  intro h
  change graphSmokeNext_s0193 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0193] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (210 : State) <= graphPotential (193 : State)
      decide
  ·
    simp [graphSmokeNext_s0193, h_l0003] at h

theorem valid_s0194 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (194 : State) label t gain ->
      gain + graphPotential t <= graphPotential (194 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0194 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0194] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (211 : State) <= graphPotential (194 : State)
    decide
  ·
    simp [graphSmokeNext_s0194, h_l0003] at h

theorem transition_ok_s0194 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (194 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (194 : State) := by
  intro h
  change graphSmokeNext_s0194 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0194] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (211 : State) <= graphPotential (194 : State)
      decide
  ·
    simp [graphSmokeNext_s0194, h_l0003] at h

theorem valid_s0195 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (195 : State) label t gain ->
      gain + graphPotential t <= graphPotential (195 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0195 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0195] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (213 : State) <= graphPotential (195 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0195] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (209 : State) <= graphPotential (195 : State)
      decide
    ·
      simp [graphSmokeNext_s0195, h_l0007, h_l0013] at h

theorem transition_ok_s0195 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (195 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (195 : State) := by
  intro h
  change graphSmokeNext_s0195 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0195] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (213 : State) <= graphPotential (195 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0195] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-54 : Int) + graphPotential (209 : State) <= graphPotential (195 : State)
        decide
    ·
      simp [graphSmokeNext_s0195, h_l0007, h_l0013] at h

theorem valid_s0196 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (196 : State) label t gain ->
      gain + graphPotential t <= graphPotential (196 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0196 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0196] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (215 : State) <= graphPotential (196 : State)
    decide
  ·
    simp [graphSmokeNext_s0196, h_l0000] at h

theorem transition_ok_s0196 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (196 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (196 : State) := by
  intro h
  change graphSmokeNext_s0196 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0196] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (215 : State) <= graphPotential (196 : State)
      decide
  ·
    simp [graphSmokeNext_s0196, h_l0000] at h

theorem valid_s0197 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (197 : State) label t gain ->
      gain + graphPotential t <= graphPotential (197 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0197 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0197] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (216 : State) <= graphPotential (197 : State)
    decide
  ·
    simp [graphSmokeNext_s0197, h_l0000] at h

theorem transition_ok_s0197 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (197 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (197 : State) := by
  intro h
  change graphSmokeNext_s0197 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0197] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (216 : State) <= graphPotential (197 : State)
      decide
  ·
    simp [graphSmokeNext_s0197, h_l0000] at h

theorem valid_s0198 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (198 : State) label t gain ->
      gain + graphPotential t <= graphPotential (198 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0198 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0198] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (217 : State) <= graphPotential (198 : State)
    decide
  ·
    simp [graphSmokeNext_s0198, h_l0000] at h

theorem transition_ok_s0198 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (198 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (198 : State) := by
  intro h
  change graphSmokeNext_s0198 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0198] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (217 : State) <= graphPotential (198 : State)
      decide
  ·
    simp [graphSmokeNext_s0198, h_l0000] at h

theorem valid_s0199 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (199 : State) label t gain ->
      gain + graphPotential t <= graphPotential (199 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0199 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0199] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (218 : State) <= graphPotential (199 : State)
    decide
  ·
    simp [graphSmokeNext_s0199, h_l0000] at h

theorem transition_ok_s0199 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (199 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (199 : State) := by
  intro h
  change graphSmokeNext_s0199 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0199] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (218 : State) <= graphPotential (199 : State)
      decide
  ·
    simp [graphSmokeNext_s0199, h_l0000] at h

theorem valid_s0200 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (200 : State) label t gain ->
      gain + graphPotential t <= graphPotential (200 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0200 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0200] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (219 : State) <= graphPotential (200 : State)
    decide
  ·
    simp [graphSmokeNext_s0200, h_l0000] at h

theorem transition_ok_s0200 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (200 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (200 : State) := by
  intro h
  change graphSmokeNext_s0200 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0200] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (219 : State) <= graphPotential (200 : State)
      decide
  ·
    simp [graphSmokeNext_s0200, h_l0000] at h

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
    change (-54 : Int) + graphPotential (214 : State) <= graphPotential (201 : State)
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
    · change (-54 : Int) + graphPotential (214 : State) <= graphPotential (201 : State)
      decide
  ·
    simp [graphSmokeNext_s0201, h_l0012] at h

theorem valid_s0202 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (202 : State) label t gain ->
      gain + graphPotential t <= graphPotential (202 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0202 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0202] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (221 : State) <= graphPotential (202 : State)
    decide
  ·
    simp [graphSmokeNext_s0202, h_l0004] at h

theorem transition_ok_s0202 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (202 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (202 : State) := by
  intro h
  change graphSmokeNext_s0202 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0202] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (221 : State) <= graphPotential (202 : State)
      decide
  ·
    simp [graphSmokeNext_s0202, h_l0004] at h

theorem valid_s0203 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (203 : State) label t gain ->
      gain + graphPotential t <= graphPotential (203 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0203 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0203] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (222 : State) <= graphPotential (203 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0203] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (212 : State) <= graphPotential (203 : State)
      decide
    ·
      by_cases h_l0013 : label = (13 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0203] at h
        rcases h with ⟨rfl, rfl⟩
        change (-18 : Int) + graphPotential (220 : State) <= graphPotential (203 : State)
        decide
      ·
        simp [graphSmokeNext_s0203, h_l0001, h_l0011, h_l0013] at h

theorem transition_ok_s0203 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (203 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (203 : State) := by
  intro h
  change graphSmokeNext_s0203 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0203] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (222 : State) <= graphPotential (203 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0203] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (212 : State) <= graphPotential (203 : State)
        decide
    ·
      by_cases h_l0013 : label = (13 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0203] at h
        rcases h with ⟨rfl, rfl⟩
        constructor
        · decide
        · change (-18 : Int) + graphPotential (220 : State) <= graphPotential (203 : State)
          decide
      ·
        simp [graphSmokeNext_s0203, h_l0001, h_l0011, h_l0013] at h

theorem valid_s0204 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (204 : State) label t gain ->
      gain + graphPotential t <= graphPotential (204 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0204 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0204] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (2 : State) <= graphPotential (204 : State)
    decide
  ·
    simp [graphSmokeNext_s0204, h_l0002] at h

theorem transition_ok_s0204 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (204 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (204 : State) := by
  intro h
  change graphSmokeNext_s0204 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0204] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (2 : State) <= graphPotential (204 : State)
      decide
  ·
    simp [graphSmokeNext_s0204, h_l0002] at h

theorem valid_s0205 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (205 : State) label t gain ->
      gain + graphPotential t <= graphPotential (205 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0205 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0205] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (3 : State) <= graphPotential (205 : State)
    decide
  ·
    simp [graphSmokeNext_s0205, h_l0002] at h

theorem transition_ok_s0205 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (205 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (205 : State) := by
  intro h
  change graphSmokeNext_s0205 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0205] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (3 : State) <= graphPotential (205 : State)
      decide
  ·
    simp [graphSmokeNext_s0205, h_l0002] at h

theorem valid_s0206 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (206 : State) label t gain ->
      gain + graphPotential t <= graphPotential (206 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0206 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0206] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (4 : State) <= graphPotential (206 : State)
    decide
  ·
    simp [graphSmokeNext_s0206, h_l0002] at h

theorem transition_ok_s0206 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (206 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (206 : State) := by
  intro h
  change graphSmokeNext_s0206 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0206] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (4 : State) <= graphPotential (206 : State)
      decide
  ·
    simp [graphSmokeNext_s0206, h_l0002] at h

theorem valid_s0207 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (207 : State) label t gain ->
      gain + graphPotential t <= graphPotential (207 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0207 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0207] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (5 : State) <= graphPotential (207 : State)
    decide
  ·
    simp [graphSmokeNext_s0207, h_l0002] at h

theorem transition_ok_s0207 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (207 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (207 : State) := by
  intro h
  change graphSmokeNext_s0207 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0207] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (5 : State) <= graphPotential (207 : State)
      decide
  ·
    simp [graphSmokeNext_s0207, h_l0002] at h

theorem valid_s0208 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (208 : State) label t gain ->
      gain + graphPotential t <= graphPotential (208 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0208 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0208] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (6 : State) <= graphPotential (208 : State)
    decide
  ·
    simp [graphSmokeNext_s0208, h_l0002] at h

theorem transition_ok_s0208 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (208 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (208 : State) := by
  intro h
  change graphSmokeNext_s0208 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0208] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (6 : State) <= graphPotential (208 : State)
      decide
  ·
    simp [graphSmokeNext_s0208, h_l0002] at h

theorem valid_s0209 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (209 : State) label t gain ->
      gain + graphPotential t <= graphPotential (209 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0209 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0209] at h
    rcases h with ⟨rfl, rfl⟩
    change (-54 : Int) + graphPotential (1 : State) <= graphPotential (209 : State)
    decide
  ·
    simp [graphSmokeNext_s0209, h_l0012] at h

theorem transition_ok_s0209 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (209 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (209 : State) := by
  intro h
  change graphSmokeNext_s0209 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0209] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-54 : Int) + graphPotential (1 : State) <= graphPotential (209 : State)
      decide
  ·
    simp [graphSmokeNext_s0209, h_l0012] at h

theorem valid_s0210 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (210 : State) label t gain ->
      gain + graphPotential t <= graphPotential (210 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0210 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0210] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (9 : State) <= graphPotential (210 : State)
    decide
  ·
    simp [graphSmokeNext_s0210, h_l0006] at h

theorem transition_ok_s0210 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (210 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (210 : State) := by
  intro h
  change graphSmokeNext_s0210 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0210] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (9 : State) <= graphPotential (210 : State)
      decide
  ·
    simp [graphSmokeNext_s0210, h_l0006] at h

theorem valid_s0211 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (211 : State) label t gain ->
      gain + graphPotential t <= graphPotential (211 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0211 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0211] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (11 : State) <= graphPotential (211 : State)
    decide
  ·
    simp [graphSmokeNext_s0211, h_l0006] at h

theorem transition_ok_s0211 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (211 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (211 : State) := by
  intro h
  change graphSmokeNext_s0211 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0211] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (11 : State) <= graphPotential (211 : State)
      decide
  ·
    simp [graphSmokeNext_s0211, h_l0006] at h

theorem valid_s0212 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (212 : State) label t gain ->
      gain + graphPotential t <= graphPotential (212 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0212 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0212] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (12 : State) <= graphPotential (212 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0212] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (7 : State) <= graphPotential (212 : State)
      decide
    ·
      simp [graphSmokeNext_s0212, h_l0003, h_l0013] at h

theorem transition_ok_s0212 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (212 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (212 : State) := by
  intro h
  change graphSmokeNext_s0212 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0212] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (12 : State) <= graphPotential (212 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0212] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-18 : Int) + graphPotential (7 : State) <= graphPotential (212 : State)
        decide
    ·
      simp [graphSmokeNext_s0212, h_l0003, h_l0013] at h

theorem valid_s0213 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (213 : State) label t gain ->
      gain + graphPotential t <= graphPotential (213 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0213 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0213] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (13 : State) <= graphPotential (213 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0213] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (8 : State) <= graphPotential (213 : State)
      decide
    ·
      simp [graphSmokeNext_s0213, h_l0003, h_l0013] at h

theorem transition_ok_s0213 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (213 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (213 : State) := by
  intro h
  change graphSmokeNext_s0213 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0213] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (13 : State) <= graphPotential (213 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0213] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-18 : Int) + graphPotential (8 : State) <= graphPotential (213 : State)
        decide
    ·
      simp [graphSmokeNext_s0213, h_l0003, h_l0013] at h

theorem valid_s0214 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (214 : State) label t gain ->
      gain + graphPotential t <= graphPotential (214 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0214 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0214] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (15 : State) <= graphPotential (214 : State)
    decide
  ·
    simp [graphSmokeNext_s0214, h_l0005] at h

theorem transition_ok_s0214 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (214 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (214 : State) := by
  intro h
  change graphSmokeNext_s0214 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0214] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (15 : State) <= graphPotential (214 : State)
      decide
  ·
    simp [graphSmokeNext_s0214, h_l0005] at h

theorem valid_s0215 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (215 : State) label t gain ->
      gain + graphPotential t <= graphPotential (215 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0215 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0215] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (16 : State) <= graphPotential (215 : State)
    decide
  ·
    simp [graphSmokeNext_s0215, h_l0005] at h

theorem transition_ok_s0215 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (215 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (215 : State) := by
  intro h
  change graphSmokeNext_s0215 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0215] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (16 : State) <= graphPotential (215 : State)
      decide
  ·
    simp [graphSmokeNext_s0215, h_l0005] at h

theorem valid_s0216 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (216 : State) label t gain ->
      gain + graphPotential t <= graphPotential (216 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0216 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0216] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (17 : State) <= graphPotential (216 : State)
    decide
  ·
    simp [graphSmokeNext_s0216, h_l0005] at h

theorem transition_ok_s0216 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (216 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (216 : State) := by
  intro h
  change graphSmokeNext_s0216 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0216] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (17 : State) <= graphPotential (216 : State)
      decide
  ·
    simp [graphSmokeNext_s0216, h_l0005] at h

theorem valid_s0217 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (217 : State) label t gain ->
      gain + graphPotential t <= graphPotential (217 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0217 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0217] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (18 : State) <= graphPotential (217 : State)
    decide
  ·
    simp [graphSmokeNext_s0217, h_l0005] at h

theorem transition_ok_s0217 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (217 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (217 : State) := by
  intro h
  change graphSmokeNext_s0217 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0217] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (18 : State) <= graphPotential (217 : State)
      decide
  ·
    simp [graphSmokeNext_s0217, h_l0005] at h

theorem valid_s0218 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (218 : State) label t gain ->
      gain + graphPotential t <= graphPotential (218 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0218 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0218] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (19 : State) <= graphPotential (218 : State)
    decide
  ·
    simp [graphSmokeNext_s0218, h_l0005] at h

theorem transition_ok_s0218 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (218 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (218 : State) := by
  intro h
  change graphSmokeNext_s0218 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0218] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (19 : State) <= graphPotential (218 : State)
      decide
  ·
    simp [graphSmokeNext_s0218, h_l0005] at h

theorem valid_s0219 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (219 : State) label t gain ->
      gain + graphPotential t <= graphPotential (219 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0219 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0219] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (20 : State) <= graphPotential (219 : State)
    decide
  ·
    simp [graphSmokeNext_s0219, h_l0005] at h

theorem transition_ok_s0219 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (219 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (219 : State) := by
  intro h
  change graphSmokeNext_s0219 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0219] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (20 : State) <= graphPotential (219 : State)
      decide
  ·
    simp [graphSmokeNext_s0219, h_l0005] at h

theorem valid_s0220 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (220 : State) label t gain ->
      gain + graphPotential t <= graphPotential (220 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0220 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0220] at h
    rcases h with ⟨rfl, rfl⟩
    change (-117 : Int) + graphPotential (7 : State) <= graphPotential (220 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0220] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (14 : State) <= graphPotential (220 : State)
      decide
    ·
      simp [graphSmokeNext_s0220, h_l0011, h_l0012] at h

theorem transition_ok_s0220 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (220 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (220 : State) := by
  intro h
  change graphSmokeNext_s0220 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0220] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-117 : Int) + graphPotential (7 : State) <= graphPotential (220 : State)
      decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0220] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-18 : Int) + graphPotential (14 : State) <= graphPotential (220 : State)
        decide
    ·
      simp [graphSmokeNext_s0220, h_l0011, h_l0012] at h

theorem valid_s0221 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (221 : State) label t gain ->
      gain + graphPotential t <= graphPotential (221 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0221 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0221] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (21 : State) <= graphPotential (221 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0221] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (10 : State) <= graphPotential (221 : State)
      decide
    ·
      simp [graphSmokeNext_s0221, h_l0000, h_l0011] at h

theorem transition_ok_s0221 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (221 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (221 : State) := by
  intro h
  change graphSmokeNext_s0221 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0221] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (21 : State) <= graphPotential (221 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0221] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (10 : State) <= graphPotential (221 : State)
        decide
    ·
      simp [graphSmokeNext_s0221, h_l0000, h_l0011] at h

theorem valid_s0222 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (222 : State) label t gain ->
      gain + graphPotential t <= graphPotential (222 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0222 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0222] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (22 : State) <= graphPotential (222 : State)
    decide
  ·
    simp [graphSmokeNext_s0222, h_l0003] at h

theorem transition_ok_s0222 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (222 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (222 : State) := by
  intro h
  change graphSmokeNext_s0222 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0222] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (22 : State) <= graphPotential (222 : State)
      decide
  ·
    simp [graphSmokeNext_s0222, h_l0003] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 192 <= s) (hhi : s < 223) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0192 h
  · exact valid_s0193 h
  · exact valid_s0194 h
  · exact valid_s0195 h
  · exact valid_s0196 h
  · exact valid_s0197 h
  · exact valid_s0198 h
  · exact valid_s0199 h
  · exact valid_s0200 h
  · exact valid_s0201 h
  · exact valid_s0202 h
  · exact valid_s0203 h
  · exact valid_s0204 h
  · exact valid_s0205 h
  · exact valid_s0206 h
  · exact valid_s0207 h
  · exact valid_s0208 h
  · exact valid_s0209 h
  · exact valid_s0210 h
  · exact valid_s0211 h
  · exact valid_s0212 h
  · exact valid_s0213 h
  · exact valid_s0214 h
  · exact valid_s0215 h
  · exact valid_s0216 h
  · exact valid_s0217 h
  · exact valid_s0218 h
  · exact valid_s0219 h
  · exact valid_s0220 h
  · exact valid_s0221 h
  · exact valid_s0222 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 192 <= s) (hhi : s < 223) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0192 h
  · exact transition_ok_s0193 h
  · exact transition_ok_s0194 h
  · exact transition_ok_s0195 h
  · exact transition_ok_s0196 h
  · exact transition_ok_s0197 h
  · exact transition_ok_s0198 h
  · exact transition_ok_s0199 h
  · exact transition_ok_s0200 h
  · exact transition_ok_s0201 h
  · exact transition_ok_s0202 h
  · exact transition_ok_s0203 h
  · exact transition_ok_s0204 h
  · exact transition_ok_s0205 h
  · exact transition_ok_s0206 h
  · exact transition_ok_s0207 h
  · exact transition_ok_s0208 h
  · exact transition_ok_s0209 h
  · exact transition_ok_s0210 h
  · exact transition_ok_s0211 h
  · exact transition_ok_s0212 h
  · exact transition_ok_s0213 h
  · exact transition_ok_s0214 h
  · exact transition_ok_s0215 h
  · exact transition_ok_s0216 h
  · exact transition_ok_s0217 h
  · exact transition_ok_s0218 h
  · exact transition_ok_s0219 h
  · exact transition_ok_s0220 h
  · exact transition_ok_s0221 h
  · exact transition_ok_s0222 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Shard006
