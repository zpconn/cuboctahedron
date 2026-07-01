import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard051

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [408, 416). -/
theorem valid_s0408 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (408 : State) label t gain ->
      gain + graphPotential t <= graphPotential (408 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0408 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0408] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (524 : State) <= graphPotential (408 : State)
    decide
  ·
    simp [graphSmokeNext_s0408, h_l0009] at h

theorem transition_ok_s0408 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (408 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (408 : State) := by
  intro h
  change graphSmokeNext_s0408 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0408] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (524 : State) <= graphPotential (408 : State)
      decide
  ·
    simp [graphSmokeNext_s0408, h_l0009] at h

theorem valid_s0409 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (409 : State) label t gain ->
      gain + graphPotential t <= graphPotential (409 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0409 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0409] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (525 : State) <= graphPotential (409 : State)
    decide
  ·
    simp [graphSmokeNext_s0409, h_l0009] at h

theorem transition_ok_s0409 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (409 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (409 : State) := by
  intro h
  change graphSmokeNext_s0409 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0409] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (525 : State) <= graphPotential (409 : State)
      decide
  ·
    simp [graphSmokeNext_s0409, h_l0009] at h

theorem valid_s0410 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (410 : State) label t gain ->
      gain + graphPotential t <= graphPotential (410 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0410 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0410] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (526 : State) <= graphPotential (410 : State)
    decide
  ·
    simp [graphSmokeNext_s0410, h_l0009] at h

theorem transition_ok_s0410 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (410 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (410 : State) := by
  intro h
  change graphSmokeNext_s0410 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0410] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (526 : State) <= graphPotential (410 : State)
      decide
  ·
    simp [graphSmokeNext_s0410, h_l0009] at h

theorem valid_s0411 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (411 : State) label t gain ->
      gain + graphPotential t <= graphPotential (411 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0411 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0411] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (527 : State) <= graphPotential (411 : State)
    decide
  ·
    simp [graphSmokeNext_s0411, h_l0009] at h

theorem transition_ok_s0411 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (411 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (411 : State) := by
  intro h
  change graphSmokeNext_s0411 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0411] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (527 : State) <= graphPotential (411 : State)
      decide
  ·
    simp [graphSmokeNext_s0411, h_l0009] at h

theorem valid_s0412 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (412 : State) label t gain ->
      gain + graphPotential t <= graphPotential (412 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0412 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0412] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (528 : State) <= graphPotential (412 : State)
    decide
  ·
    simp [graphSmokeNext_s0412, h_l0009] at h

theorem transition_ok_s0412 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (412 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (412 : State) := by
  intro h
  change graphSmokeNext_s0412 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0412] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (528 : State) <= graphPotential (412 : State)
      decide
  ·
    simp [graphSmokeNext_s0412, h_l0009] at h

theorem valid_s0413 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (413 : State) label t gain ->
      gain + graphPotential t <= graphPotential (413 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0413 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0413] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (529 : State) <= graphPotential (413 : State)
    decide
  ·
    simp [graphSmokeNext_s0413, h_l0009] at h

theorem transition_ok_s0413 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (413 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (413 : State) := by
  intro h
  change graphSmokeNext_s0413 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0413] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (529 : State) <= graphPotential (413 : State)
      decide
  ·
    simp [graphSmokeNext_s0413, h_l0009] at h

theorem valid_s0414 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (414 : State) label t gain ->
      gain + graphPotential t <= graphPotential (414 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0414 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0414] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (530 : State) <= graphPotential (414 : State)
    decide
  ·
    simp [graphSmokeNext_s0414, h_l0009] at h

theorem transition_ok_s0414 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (414 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (414 : State) := by
  intro h
  change graphSmokeNext_s0414 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0414] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (530 : State) <= graphPotential (414 : State)
      decide
  ·
    simp [graphSmokeNext_s0414, h_l0009] at h

theorem valid_s0415 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (415 : State) label t gain ->
      gain + graphPotential t <= graphPotential (415 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0415 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0415] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (531 : State) <= graphPotential (415 : State)
    decide
  ·
    simp [graphSmokeNext_s0415, h_l0009] at h

theorem transition_ok_s0415 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (415 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (415 : State) := by
  intro h
  change graphSmokeNext_s0415 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0415] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (531 : State) <= graphPotential (415 : State)
      decide
  ·
    simp [graphSmokeNext_s0415, h_l0009] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 408 <= s) (hhi : s < 416) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0408 h
  · exact valid_s0409 h
  · exact valid_s0410 h
  · exact valid_s0411 h
  · exact valid_s0412 h
  · exact valid_s0413 h
  · exact valid_s0414 h
  · exact valid_s0415 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 408 <= s) (hhi : s < 416) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0408 h
  · exact transition_ok_s0409 h
  · exact transition_ok_s0410 h
  · exact transition_ok_s0411 h
  · exact transition_ok_s0412 h
  · exact transition_ok_s0413 h
  · exact transition_ok_s0414 h
  · exact transition_ok_s0415 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard051
