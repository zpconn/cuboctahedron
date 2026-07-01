import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard059

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [472, 480). -/
theorem valid_s0472 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (472 : State) label t gain ->
      gain + graphPotential t <= graphPotential (472 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0472 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0472] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (588 : State) <= graphPotential (472 : State)
    decide
  ·
    simp [graphSmokeNext_s0472, h_l0009] at h

theorem transition_ok_s0472 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (472 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (472 : State) := by
  intro h
  change graphSmokeNext_s0472 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0472] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (588 : State) <= graphPotential (472 : State)
      decide
  ·
    simp [graphSmokeNext_s0472, h_l0009] at h

theorem valid_s0473 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (473 : State) label t gain ->
      gain + graphPotential t <= graphPotential (473 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0473 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0473] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (589 : State) <= graphPotential (473 : State)
    decide
  ·
    simp [graphSmokeNext_s0473, h_l0009] at h

theorem transition_ok_s0473 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (473 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (473 : State) := by
  intro h
  change graphSmokeNext_s0473 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0473] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (589 : State) <= graphPotential (473 : State)
      decide
  ·
    simp [graphSmokeNext_s0473, h_l0009] at h

theorem valid_s0474 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (474 : State) label t gain ->
      gain + graphPotential t <= graphPotential (474 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0474 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0474] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (590 : State) <= graphPotential (474 : State)
    decide
  ·
    simp [graphSmokeNext_s0474, h_l0009] at h

theorem transition_ok_s0474 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (474 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (474 : State) := by
  intro h
  change graphSmokeNext_s0474 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0474] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (590 : State) <= graphPotential (474 : State)
      decide
  ·
    simp [graphSmokeNext_s0474, h_l0009] at h

theorem valid_s0475 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (475 : State) label t gain ->
      gain + graphPotential t <= graphPotential (475 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0475 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0475] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (591 : State) <= graphPotential (475 : State)
    decide
  ·
    simp [graphSmokeNext_s0475, h_l0009] at h

theorem transition_ok_s0475 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (475 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (475 : State) := by
  intro h
  change graphSmokeNext_s0475 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0475] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (591 : State) <= graphPotential (475 : State)
      decide
  ·
    simp [graphSmokeNext_s0475, h_l0009] at h

theorem valid_s0476 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (476 : State) label t gain ->
      gain + graphPotential t <= graphPotential (476 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0476 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0476] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (592 : State) <= graphPotential (476 : State)
    decide
  ·
    simp [graphSmokeNext_s0476, h_l0009] at h

theorem transition_ok_s0476 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (476 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (476 : State) := by
  intro h
  change graphSmokeNext_s0476 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0476] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (592 : State) <= graphPotential (476 : State)
      decide
  ·
    simp [graphSmokeNext_s0476, h_l0009] at h

theorem valid_s0477 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (477 : State) label t gain ->
      gain + graphPotential t <= graphPotential (477 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0477 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0477] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (593 : State) <= graphPotential (477 : State)
    decide
  ·
    simp [graphSmokeNext_s0477, h_l0009] at h

theorem transition_ok_s0477 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (477 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (477 : State) := by
  intro h
  change graphSmokeNext_s0477 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0477] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (593 : State) <= graphPotential (477 : State)
      decide
  ·
    simp [graphSmokeNext_s0477, h_l0009] at h

theorem valid_s0478 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (478 : State) label t gain ->
      gain + graphPotential t <= graphPotential (478 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0478 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0478] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (594 : State) <= graphPotential (478 : State)
    decide
  ·
    simp [graphSmokeNext_s0478, h_l0009] at h

theorem transition_ok_s0478 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (478 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (478 : State) := by
  intro h
  change graphSmokeNext_s0478 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0478] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (594 : State) <= graphPotential (478 : State)
      decide
  ·
    simp [graphSmokeNext_s0478, h_l0009] at h

theorem valid_s0479 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (479 : State) label t gain ->
      gain + graphPotential t <= graphPotential (479 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0479 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0479] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (595 : State) <= graphPotential (479 : State)
    decide
  ·
    simp [graphSmokeNext_s0479, h_l0009] at h

theorem transition_ok_s0479 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (479 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (479 : State) := by
  intro h
  change graphSmokeNext_s0479 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0479] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (595 : State) <= graphPotential (479 : State)
      decide
  ·
    simp [graphSmokeNext_s0479, h_l0009] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 472 <= s) (hhi : s < 480) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0472 h
  · exact valid_s0473 h
  · exact valid_s0474 h
  · exact valid_s0475 h
  · exact valid_s0476 h
  · exact valid_s0477 h
  · exact valid_s0478 h
  · exact valid_s0479 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 472 <= s) (hhi : s < 480) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0472 h
  · exact transition_ok_s0473 h
  · exact transition_ok_s0474 h
  · exact transition_ok_s0475 h
  · exact transition_ok_s0476 h
  · exact transition_ok_s0477 h
  · exact transition_ok_s0478 h
  · exact transition_ok_s0479 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard059
