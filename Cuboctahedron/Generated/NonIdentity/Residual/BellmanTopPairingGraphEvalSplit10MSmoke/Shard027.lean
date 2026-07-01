import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard027

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [216, 224). -/
theorem valid_s0216 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (216 : State) label t gain ->
      gain + graphPotential t <= graphPotential (216 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0216 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0216] at h
    rcases h with ⟨rfl, rfl⟩
    change (-21 : Int) + graphPotential (252 : State) <= graphPotential (216 : State)
    decide
  ·
    simp [graphSmokeNext_s0216, h_l0011] at h

theorem transition_ok_s0216 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (216 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (216 : State) := by
  intro h
  change graphSmokeNext_s0216 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0216] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-21 : Int) + graphPotential (252 : State) <= graphPotential (216 : State)
      decide
  ·
    simp [graphSmokeNext_s0216, h_l0011] at h

theorem valid_s0217 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (217 : State) label t gain ->
      gain + graphPotential t <= graphPotential (217 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0217 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0217] at h
    rcases h with ⟨rfl, rfl⟩
    change (-21 : Int) + graphPotential (255 : State) <= graphPotential (217 : State)
    decide
  ·
    simp [graphSmokeNext_s0217, h_l0011] at h

theorem transition_ok_s0217 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (217 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (217 : State) := by
  intro h
  change graphSmokeNext_s0217 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0217] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-21 : Int) + graphPotential (255 : State) <= graphPotential (217 : State)
      decide
  ·
    simp [graphSmokeNext_s0217, h_l0011] at h

theorem valid_s0218 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (218 : State) label t gain ->
      gain + graphPotential t <= graphPotential (218 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0218 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0218] at h
    rcases h with ⟨rfl, rfl⟩
    change (-21 : Int) + graphPotential (259 : State) <= graphPotential (218 : State)
    decide
  ·
    simp [graphSmokeNext_s0218, h_l0011] at h

theorem transition_ok_s0218 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (218 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (218 : State) := by
  intro h
  change graphSmokeNext_s0218 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0218] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-21 : Int) + graphPotential (259 : State) <= graphPotential (218 : State)
      decide
  ·
    simp [graphSmokeNext_s0218, h_l0011] at h

theorem valid_s0219 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (219 : State) label t gain ->
      gain + graphPotential t <= graphPotential (219 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0219 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0219] at h
    rcases h with ⟨rfl, rfl⟩
    change (-21 : Int) + graphPotential (264 : State) <= graphPotential (219 : State)
    decide
  ·
    simp [graphSmokeNext_s0219, h_l0011] at h

theorem transition_ok_s0219 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (219 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (219 : State) := by
  intro h
  change graphSmokeNext_s0219 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0219] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-21 : Int) + graphPotential (264 : State) <= graphPotential (219 : State)
      decide
  ·
    simp [graphSmokeNext_s0219, h_l0011] at h

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
    change (-21 : Int) + graphPotential (276 : State) <= graphPotential (220 : State)
    decide
  ·
    simp [graphSmokeNext_s0220, h_l0011] at h

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
    · change (-21 : Int) + graphPotential (276 : State) <= graphPotential (220 : State)
      decide
  ·
    simp [graphSmokeNext_s0220, h_l0011] at h

theorem valid_s0221 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (221 : State) label t gain ->
      gain + graphPotential t <= graphPotential (221 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0221 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0221] at h
    rcases h with ⟨rfl, rfl⟩
    change (-21 : Int) + graphPotential (280 : State) <= graphPotential (221 : State)
    decide
  ·
    simp [graphSmokeNext_s0221, h_l0011] at h

theorem transition_ok_s0221 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (221 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (221 : State) := by
  intro h
  change graphSmokeNext_s0221 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0221] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-21 : Int) + graphPotential (280 : State) <= graphPotential (221 : State)
      decide
  ·
    simp [graphSmokeNext_s0221, h_l0011] at h

theorem valid_s0222 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (222 : State) label t gain ->
      gain + graphPotential t <= graphPotential (222 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0222 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0222] at h
    rcases h with ⟨rfl, rfl⟩
    change (-21 : Int) + graphPotential (302 : State) <= graphPotential (222 : State)
    decide
  ·
    simp [graphSmokeNext_s0222, h_l0011] at h

theorem transition_ok_s0222 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (222 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (222 : State) := by
  intro h
  change graphSmokeNext_s0222 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0222] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-21 : Int) + graphPotential (302 : State) <= graphPotential (222 : State)
      decide
  ·
    simp [graphSmokeNext_s0222, h_l0011] at h

theorem valid_s0223 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (223 : State) label t gain ->
      gain + graphPotential t <= graphPotential (223 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0223 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0223] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (313 : State) <= graphPotential (223 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0223] at h
      rcases h with ⟨rfl, rfl⟩
      change (-10 : Int) + graphPotential (343 : State) <= graphPotential (223 : State)
      decide
    ·
      simp [graphSmokeNext_s0223, h_l0011, h_l0013] at h

theorem transition_ok_s0223 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (223 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (223 : State) := by
  intro h
  change graphSmokeNext_s0223 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0223] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (313 : State) <= graphPotential (223 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0223] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-10 : Int) + graphPotential (343 : State) <= graphPotential (223 : State)
        decide
    ·
      simp [graphSmokeNext_s0223, h_l0011, h_l0013] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 216 <= s) (hhi : s < 224) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0216 h
  · exact valid_s0217 h
  · exact valid_s0218 h
  · exact valid_s0219 h
  · exact valid_s0220 h
  · exact valid_s0221 h
  · exact valid_s0222 h
  · exact valid_s0223 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 216 <= s) (hhi : s < 224) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0216 h
  · exact transition_ok_s0217 h
  · exact transition_ok_s0218 h
  · exact transition_ok_s0219 h
  · exact transition_ok_s0220 h
  · exact transition_ok_s0221 h
  · exact transition_ok_s0222 h
  · exact transition_ok_s0223 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard027
