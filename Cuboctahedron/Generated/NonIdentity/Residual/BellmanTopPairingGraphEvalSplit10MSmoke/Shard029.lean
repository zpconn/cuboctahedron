import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard029

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [464, 480). -/
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

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 464 <= s) (hhi : s < 480) :
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
  · exact valid_s0472 h
  · exact valid_s0473 h
  · exact valid_s0474 h
  · exact valid_s0475 h
  · exact valid_s0476 h
  · exact valid_s0477 h
  · exact valid_s0478 h
  · exact valid_s0479 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard029
