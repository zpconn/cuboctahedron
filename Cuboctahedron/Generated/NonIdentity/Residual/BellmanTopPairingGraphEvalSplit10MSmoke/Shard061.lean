import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard061

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [488, 496). -/
theorem valid_s0488 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (488 : State) label t gain ->
      gain + graphPotential t <= graphPotential (488 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0488 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0488] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (604 : State) <= graphPotential (488 : State)
    decide
  ·
    simp [graphSmokeNext_s0488, h_l0009] at h

theorem transition_ok_s0488 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (488 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (488 : State) := by
  intro h
  change graphSmokeNext_s0488 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0488] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (604 : State) <= graphPotential (488 : State)
      decide
  ·
    simp [graphSmokeNext_s0488, h_l0009] at h

theorem valid_s0489 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (489 : State) label t gain ->
      gain + graphPotential t <= graphPotential (489 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0489 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0489] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (605 : State) <= graphPotential (489 : State)
    decide
  ·
    simp [graphSmokeNext_s0489, h_l0009] at h

theorem transition_ok_s0489 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (489 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (489 : State) := by
  intro h
  change graphSmokeNext_s0489 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0489] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (605 : State) <= graphPotential (489 : State)
      decide
  ·
    simp [graphSmokeNext_s0489, h_l0009] at h

theorem valid_s0490 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (490 : State) label t gain ->
      gain + graphPotential t <= graphPotential (490 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0490 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0490] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (606 : State) <= graphPotential (490 : State)
    decide
  ·
    simp [graphSmokeNext_s0490, h_l0009] at h

theorem transition_ok_s0490 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (490 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (490 : State) := by
  intro h
  change graphSmokeNext_s0490 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0490] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (606 : State) <= graphPotential (490 : State)
      decide
  ·
    simp [graphSmokeNext_s0490, h_l0009] at h

theorem valid_s0491 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (491 : State) label t gain ->
      gain + graphPotential t <= graphPotential (491 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0491 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0491] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (607 : State) <= graphPotential (491 : State)
    decide
  ·
    simp [graphSmokeNext_s0491, h_l0009] at h

theorem transition_ok_s0491 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (491 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (491 : State) := by
  intro h
  change graphSmokeNext_s0491 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0491] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (607 : State) <= graphPotential (491 : State)
      decide
  ·
    simp [graphSmokeNext_s0491, h_l0009] at h

theorem valid_s0492 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (492 : State) label t gain ->
      gain + graphPotential t <= graphPotential (492 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0492 label = some (t, gain) at h
  simp [graphSmokeNext_s0492] at h

theorem transition_ok_s0492 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (492 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (492 : State) := by
  intro h
  change graphSmokeNext_s0492 label = some (t, gain) at h
  simp [graphSmokeNext_s0492] at h

theorem valid_s0493 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (493 : State) label t gain ->
      gain + graphPotential t <= graphPotential (493 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0493 label = some (t, gain) at h
  simp [graphSmokeNext_s0493] at h

theorem transition_ok_s0493 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (493 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (493 : State) := by
  intro h
  change graphSmokeNext_s0493 label = some (t, gain) at h
  simp [graphSmokeNext_s0493] at h

theorem valid_s0494 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (494 : State) label t gain ->
      gain + graphPotential t <= graphPotential (494 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0494 label = some (t, gain) at h
  simp [graphSmokeNext_s0494] at h

theorem transition_ok_s0494 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (494 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (494 : State) := by
  intro h
  change graphSmokeNext_s0494 label = some (t, gain) at h
  simp [graphSmokeNext_s0494] at h

theorem valid_s0495 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (495 : State) label t gain ->
      gain + graphPotential t <= graphPotential (495 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0495 label = some (t, gain) at h
  simp [graphSmokeNext_s0495] at h

theorem transition_ok_s0495 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (495 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (495 : State) := by
  intro h
  change graphSmokeNext_s0495 label = some (t, gain) at h
  simp [graphSmokeNext_s0495] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 488 <= s) (hhi : s < 496) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0488 h
  · exact valid_s0489 h
  · exact valid_s0490 h
  · exact valid_s0491 h
  · exact valid_s0492 h
  · exact valid_s0493 h
  · exact valid_s0494 h
  · exact valid_s0495 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 488 <= s) (hhi : s < 496) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0488 h
  · exact transition_ok_s0489 h
  · exact transition_ok_s0490 h
  · exact transition_ok_s0491 h
  · exact transition_ok_s0492 h
  · exact transition_ok_s0493 h
  · exact transition_ok_s0494 h
  · exact transition_ok_s0495 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard061
