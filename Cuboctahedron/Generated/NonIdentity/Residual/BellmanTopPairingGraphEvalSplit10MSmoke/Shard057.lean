import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard057

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [456, 464). -/
theorem valid_s0456 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (456 : State) label t gain ->
      gain + graphPotential t <= graphPotential (456 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0456 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0456] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (572 : State) <= graphPotential (456 : State)
    decide
  ·
    simp [graphSmokeNext_s0456, h_l0009] at h

theorem transition_ok_s0456 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (456 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (456 : State) := by
  intro h
  change graphSmokeNext_s0456 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0456] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (572 : State) <= graphPotential (456 : State)
      decide
  ·
    simp [graphSmokeNext_s0456, h_l0009] at h

theorem valid_s0457 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (457 : State) label t gain ->
      gain + graphPotential t <= graphPotential (457 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0457 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0457] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (573 : State) <= graphPotential (457 : State)
    decide
  ·
    simp [graphSmokeNext_s0457, h_l0009] at h

theorem transition_ok_s0457 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (457 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (457 : State) := by
  intro h
  change graphSmokeNext_s0457 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0457] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (573 : State) <= graphPotential (457 : State)
      decide
  ·
    simp [graphSmokeNext_s0457, h_l0009] at h

theorem valid_s0458 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (458 : State) label t gain ->
      gain + graphPotential t <= graphPotential (458 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0458 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0458] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (574 : State) <= graphPotential (458 : State)
    decide
  ·
    simp [graphSmokeNext_s0458, h_l0009] at h

theorem transition_ok_s0458 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (458 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (458 : State) := by
  intro h
  change graphSmokeNext_s0458 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0458] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (574 : State) <= graphPotential (458 : State)
      decide
  ·
    simp [graphSmokeNext_s0458, h_l0009] at h

theorem valid_s0459 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (459 : State) label t gain ->
      gain + graphPotential t <= graphPotential (459 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0459 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0459] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (575 : State) <= graphPotential (459 : State)
    decide
  ·
    simp [graphSmokeNext_s0459, h_l0009] at h

theorem transition_ok_s0459 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (459 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (459 : State) := by
  intro h
  change graphSmokeNext_s0459 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0459] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (575 : State) <= graphPotential (459 : State)
      decide
  ·
    simp [graphSmokeNext_s0459, h_l0009] at h

theorem valid_s0460 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (460 : State) label t gain ->
      gain + graphPotential t <= graphPotential (460 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0460 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0460] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (576 : State) <= graphPotential (460 : State)
    decide
  ·
    simp [graphSmokeNext_s0460, h_l0009] at h

theorem transition_ok_s0460 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (460 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (460 : State) := by
  intro h
  change graphSmokeNext_s0460 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0460] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (576 : State) <= graphPotential (460 : State)
      decide
  ·
    simp [graphSmokeNext_s0460, h_l0009] at h

theorem valid_s0461 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (461 : State) label t gain ->
      gain + graphPotential t <= graphPotential (461 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0461 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0461] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (577 : State) <= graphPotential (461 : State)
    decide
  ·
    simp [graphSmokeNext_s0461, h_l0009] at h

theorem transition_ok_s0461 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (461 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (461 : State) := by
  intro h
  change graphSmokeNext_s0461 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0461] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (577 : State) <= graphPotential (461 : State)
      decide
  ·
    simp [graphSmokeNext_s0461, h_l0009] at h

theorem valid_s0462 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (462 : State) label t gain ->
      gain + graphPotential t <= graphPotential (462 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0462 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0462] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (578 : State) <= graphPotential (462 : State)
    decide
  ·
    simp [graphSmokeNext_s0462, h_l0009] at h

theorem transition_ok_s0462 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (462 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (462 : State) := by
  intro h
  change graphSmokeNext_s0462 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0462] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (578 : State) <= graphPotential (462 : State)
      decide
  ·
    simp [graphSmokeNext_s0462, h_l0009] at h

theorem valid_s0463 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (463 : State) label t gain ->
      gain + graphPotential t <= graphPotential (463 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0463 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0463] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (579 : State) <= graphPotential (463 : State)
    decide
  ·
    simp [graphSmokeNext_s0463, h_l0009] at h

theorem transition_ok_s0463 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (463 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (463 : State) := by
  intro h
  change graphSmokeNext_s0463 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0463] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (579 : State) <= graphPotential (463 : State)
      decide
  ·
    simp [graphSmokeNext_s0463, h_l0009] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 456 <= s) (hhi : s < 464) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0456 h
  · exact valid_s0457 h
  · exact valid_s0458 h
  · exact valid_s0459 h
  · exact valid_s0460 h
  · exact valid_s0461 h
  · exact valid_s0462 h
  · exact valid_s0463 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 456 <= s) (hhi : s < 464) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0456 h
  · exact transition_ok_s0457 h
  · exact transition_ok_s0458 h
  · exact transition_ok_s0459 h
  · exact transition_ok_s0460 h
  · exact transition_ok_s0461 h
  · exact transition_ok_s0462 h
  · exact transition_ok_s0463 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard057
