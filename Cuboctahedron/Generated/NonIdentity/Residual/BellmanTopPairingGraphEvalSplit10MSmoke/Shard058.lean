import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard058

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [464, 472). -/
theorem valid_s0464 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (464 : State) label t gain ->
      gain + graphPotential t <= graphPotential (464 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0464 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0464] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (580 : State) <= graphPotential (464 : State)
    decide
  ·
    simp [graphSmokeNext_s0464, h_l0009] at h

theorem transition_ok_s0464 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (464 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (464 : State) := by
  intro h
  change graphSmokeNext_s0464 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0464] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (580 : State) <= graphPotential (464 : State)
      decide
  ·
    simp [graphSmokeNext_s0464, h_l0009] at h

theorem valid_s0465 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (465 : State) label t gain ->
      gain + graphPotential t <= graphPotential (465 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0465 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0465] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (581 : State) <= graphPotential (465 : State)
    decide
  ·
    simp [graphSmokeNext_s0465, h_l0009] at h

theorem transition_ok_s0465 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (465 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (465 : State) := by
  intro h
  change graphSmokeNext_s0465 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0465] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (581 : State) <= graphPotential (465 : State)
      decide
  ·
    simp [graphSmokeNext_s0465, h_l0009] at h

theorem valid_s0466 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (466 : State) label t gain ->
      gain + graphPotential t <= graphPotential (466 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0466 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0466] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (582 : State) <= graphPotential (466 : State)
    decide
  ·
    simp [graphSmokeNext_s0466, h_l0009] at h

theorem transition_ok_s0466 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (466 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (466 : State) := by
  intro h
  change graphSmokeNext_s0466 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0466] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (582 : State) <= graphPotential (466 : State)
      decide
  ·
    simp [graphSmokeNext_s0466, h_l0009] at h

theorem valid_s0467 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (467 : State) label t gain ->
      gain + graphPotential t <= graphPotential (467 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0467 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0467] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (583 : State) <= graphPotential (467 : State)
    decide
  ·
    simp [graphSmokeNext_s0467, h_l0009] at h

theorem transition_ok_s0467 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (467 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (467 : State) := by
  intro h
  change graphSmokeNext_s0467 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0467] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (583 : State) <= graphPotential (467 : State)
      decide
  ·
    simp [graphSmokeNext_s0467, h_l0009] at h

theorem valid_s0468 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (468 : State) label t gain ->
      gain + graphPotential t <= graphPotential (468 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0468 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0468] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (584 : State) <= graphPotential (468 : State)
    decide
  ·
    simp [graphSmokeNext_s0468, h_l0009] at h

theorem transition_ok_s0468 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (468 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (468 : State) := by
  intro h
  change graphSmokeNext_s0468 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0468] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (584 : State) <= graphPotential (468 : State)
      decide
  ·
    simp [graphSmokeNext_s0468, h_l0009] at h

theorem valid_s0469 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (469 : State) label t gain ->
      gain + graphPotential t <= graphPotential (469 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0469 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0469] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (585 : State) <= graphPotential (469 : State)
    decide
  ·
    simp [graphSmokeNext_s0469, h_l0009] at h

theorem transition_ok_s0469 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (469 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (469 : State) := by
  intro h
  change graphSmokeNext_s0469 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0469] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (585 : State) <= graphPotential (469 : State)
      decide
  ·
    simp [graphSmokeNext_s0469, h_l0009] at h

theorem valid_s0470 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (470 : State) label t gain ->
      gain + graphPotential t <= graphPotential (470 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0470 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0470] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (586 : State) <= graphPotential (470 : State)
    decide
  ·
    simp [graphSmokeNext_s0470, h_l0009] at h

theorem transition_ok_s0470 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (470 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (470 : State) := by
  intro h
  change graphSmokeNext_s0470 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0470] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (586 : State) <= graphPotential (470 : State)
      decide
  ·
    simp [graphSmokeNext_s0470, h_l0009] at h

theorem valid_s0471 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (471 : State) label t gain ->
      gain + graphPotential t <= graphPotential (471 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0471 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0471] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (587 : State) <= graphPotential (471 : State)
    decide
  ·
    simp [graphSmokeNext_s0471, h_l0009] at h

theorem transition_ok_s0471 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (471 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (471 : State) := by
  intro h
  change graphSmokeNext_s0471 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0471] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-73 : Int) + graphPotential (587 : State) <= graphPotential (471 : State)
      decide
  ·
    simp [graphSmokeNext_s0471, h_l0009] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 464 <= s) (hhi : s < 472) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0464 h
  · exact valid_s0465 h
  · exact valid_s0466 h
  · exact valid_s0467 h
  · exact valid_s0468 h
  · exact valid_s0469 h
  · exact valid_s0470 h
  · exact valid_s0471 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 464 <= s) (hhi : s < 472) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0464 h
  · exact transition_ok_s0465 h
  · exact transition_ok_s0466 h
  · exact transition_ok_s0467 h
  · exact transition_ok_s0468 h
  · exact transition_ok_s0469 h
  · exact transition_ok_s0470 h
  · exact transition_ok_s0471 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard058
