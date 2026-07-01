import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard053

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [424, 432). -/
theorem valid_s0424 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (424 : State) label t gain ->
      gain + graphPotential t <= graphPotential (424 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0424 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0424] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (540 : State) <= graphPotential (424 : State)
    decide
  ·
    simp [graphSmokeNext_s0424, h_l0009] at h

theorem transition_ok_s0424 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (424 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (424 : State) := by
  intro h
  change graphSmokeNext_s0424 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0424] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (540 : State) <= graphPotential (424 : State)
      decide
  ·
    simp [graphSmokeNext_s0424, h_l0009] at h

theorem valid_s0425 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (425 : State) label t gain ->
      gain + graphPotential t <= graphPotential (425 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0425 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0425] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (541 : State) <= graphPotential (425 : State)
    decide
  ·
    simp [graphSmokeNext_s0425, h_l0009] at h

theorem transition_ok_s0425 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (425 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (425 : State) := by
  intro h
  change graphSmokeNext_s0425 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0425] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (541 : State) <= graphPotential (425 : State)
      decide
  ·
    simp [graphSmokeNext_s0425, h_l0009] at h

theorem valid_s0426 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (426 : State) label t gain ->
      gain + graphPotential t <= graphPotential (426 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0426 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0426] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (542 : State) <= graphPotential (426 : State)
    decide
  ·
    simp [graphSmokeNext_s0426, h_l0009] at h

theorem transition_ok_s0426 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (426 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (426 : State) := by
  intro h
  change graphSmokeNext_s0426 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0426] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (542 : State) <= graphPotential (426 : State)
      decide
  ·
    simp [graphSmokeNext_s0426, h_l0009] at h

theorem valid_s0427 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (427 : State) label t gain ->
      gain + graphPotential t <= graphPotential (427 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0427 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0427] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (543 : State) <= graphPotential (427 : State)
    decide
  ·
    simp [graphSmokeNext_s0427, h_l0009] at h

theorem transition_ok_s0427 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (427 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (427 : State) := by
  intro h
  change graphSmokeNext_s0427 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0427] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (543 : State) <= graphPotential (427 : State)
      decide
  ·
    simp [graphSmokeNext_s0427, h_l0009] at h

theorem valid_s0428 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (428 : State) label t gain ->
      gain + graphPotential t <= graphPotential (428 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0428 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0428] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (544 : State) <= graphPotential (428 : State)
    decide
  ·
    simp [graphSmokeNext_s0428, h_l0009] at h

theorem transition_ok_s0428 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (428 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (428 : State) := by
  intro h
  change graphSmokeNext_s0428 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0428] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (544 : State) <= graphPotential (428 : State)
      decide
  ·
    simp [graphSmokeNext_s0428, h_l0009] at h

theorem valid_s0429 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (429 : State) label t gain ->
      gain + graphPotential t <= graphPotential (429 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0429 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0429] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (545 : State) <= graphPotential (429 : State)
    decide
  ·
    simp [graphSmokeNext_s0429, h_l0009] at h

theorem transition_ok_s0429 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (429 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (429 : State) := by
  intro h
  change graphSmokeNext_s0429 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0429] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (545 : State) <= graphPotential (429 : State)
      decide
  ·
    simp [graphSmokeNext_s0429, h_l0009] at h

theorem valid_s0430 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (430 : State) label t gain ->
      gain + graphPotential t <= graphPotential (430 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0430 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0430] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (546 : State) <= graphPotential (430 : State)
    decide
  ·
    simp [graphSmokeNext_s0430, h_l0009] at h

theorem transition_ok_s0430 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (430 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (430 : State) := by
  intro h
  change graphSmokeNext_s0430 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0430] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (546 : State) <= graphPotential (430 : State)
      decide
  ·
    simp [graphSmokeNext_s0430, h_l0009] at h

theorem valid_s0431 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (431 : State) label t gain ->
      gain + graphPotential t <= graphPotential (431 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0431 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0431] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (547 : State) <= graphPotential (431 : State)
    decide
  ·
    simp [graphSmokeNext_s0431, h_l0009] at h

theorem transition_ok_s0431 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (431 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (431 : State) := by
  intro h
  change graphSmokeNext_s0431 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0431] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (547 : State) <= graphPotential (431 : State)
      decide
  ·
    simp [graphSmokeNext_s0431, h_l0009] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 424 <= s) (hhi : s < 432) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0424 h
  · exact valid_s0425 h
  · exact valid_s0426 h
  · exact valid_s0427 h
  · exact valid_s0428 h
  · exact valid_s0429 h
  · exact valid_s0430 h
  · exact valid_s0431 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 424 <= s) (hhi : s < 432) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0424 h
  · exact transition_ok_s0425 h
  · exact transition_ok_s0426 h
  · exact transition_ok_s0427 h
  · exact transition_ok_s0428 h
  · exact transition_ok_s0429 h
  · exact transition_ok_s0430 h
  · exact transition_ok_s0431 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard053
