import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard081

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [648, 656). -/
theorem valid_s0648 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (648 : State) label t gain ->
      gain + graphPotential t <= graphPotential (648 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0648 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0648] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (685 : State) <= graphPotential (648 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0648] at h
      rcases h with ⟨rfl, rfl⟩
      change (114 : Int) + graphPotential (682 : State) <= graphPotential (648 : State)
      decide
    ·
      simp [graphSmokeNext_s0648, h_l0005, h_l0013] at h

theorem transition_ok_s0648 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (648 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (648 : State) := by
  intro h
  change graphSmokeNext_s0648 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0648] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (685 : State) <= graphPotential (648 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0648] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (114 : Int) + graphPotential (682 : State) <= graphPotential (648 : State)
        decide
    ·
      simp [graphSmokeNext_s0648, h_l0005, h_l0013] at h

theorem valid_s0649 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (649 : State) label t gain ->
      gain + graphPotential t <= graphPotential (649 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0649 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0649] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (691 : State) <= graphPotential (649 : State)
    decide
  ·
    simp [graphSmokeNext_s0649, h_l0005] at h

theorem transition_ok_s0649 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (649 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (649 : State) := by
  intro h
  change graphSmokeNext_s0649 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0649] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (691 : State) <= graphPotential (649 : State)
      decide
  ·
    simp [graphSmokeNext_s0649, h_l0005] at h

theorem valid_s0650 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (650 : State) label t gain ->
      gain + graphPotential t <= graphPotential (650 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0650 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0650] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (693 : State) <= graphPotential (650 : State)
    decide
  ·
    simp [graphSmokeNext_s0650, h_l0005] at h

theorem transition_ok_s0650 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (650 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (650 : State) := by
  intro h
  change graphSmokeNext_s0650 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0650] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (693 : State) <= graphPotential (650 : State)
      decide
  ·
    simp [graphSmokeNext_s0650, h_l0005] at h

theorem valid_s0651 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (651 : State) label t gain ->
      gain + graphPotential t <= graphPotential (651 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0651 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0651] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (695 : State) <= graphPotential (651 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0651] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (686 : State) <= graphPotential (651 : State)
      decide
    ·
      simp [graphSmokeNext_s0651, h_l0006, h_l0013] at h

theorem transition_ok_s0651 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (651 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (651 : State) := by
  intro h
  change graphSmokeNext_s0651 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0651] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (695 : State) <= graphPotential (651 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0651] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-18 : Int) + graphPotential (686 : State) <= graphPotential (651 : State)
        decide
    ·
      simp [graphSmokeNext_s0651, h_l0006, h_l0013] at h

theorem valid_s0652 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (652 : State) label t gain ->
      gain + graphPotential t <= graphPotential (652 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0652 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0652] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (697 : State) <= graphPotential (652 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0652] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (687 : State) <= graphPotential (652 : State)
      decide
    ·
      simp [graphSmokeNext_s0652, h_l0006, h_l0013] at h

theorem transition_ok_s0652 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (652 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (652 : State) := by
  intro h
  change graphSmokeNext_s0652 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0652] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (697 : State) <= graphPotential (652 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0652] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-18 : Int) + graphPotential (687 : State) <= graphPotential (652 : State)
        decide
    ·
      simp [graphSmokeNext_s0652, h_l0006, h_l0013] at h

theorem valid_s0653 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (653 : State) label t gain ->
      gain + graphPotential t <= graphPotential (653 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0653 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0653] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (698 : State) <= graphPotential (653 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0653] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (688 : State) <= graphPotential (653 : State)
      decide
    ·
      simp [graphSmokeNext_s0653, h_l0006, h_l0013] at h

theorem transition_ok_s0653 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (653 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (653 : State) := by
  intro h
  change graphSmokeNext_s0653 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0653] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (698 : State) <= graphPotential (653 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0653] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-18 : Int) + graphPotential (688 : State) <= graphPotential (653 : State)
        decide
    ·
      simp [graphSmokeNext_s0653, h_l0006, h_l0013] at h

theorem valid_s0654 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (654 : State) label t gain ->
      gain + graphPotential t <= graphPotential (654 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0654 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0654] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (699 : State) <= graphPotential (654 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0654] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (689 : State) <= graphPotential (654 : State)
      decide
    ·
      simp [graphSmokeNext_s0654, h_l0006, h_l0013] at h

theorem transition_ok_s0654 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (654 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (654 : State) := by
  intro h
  change graphSmokeNext_s0654 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0654] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (699 : State) <= graphPotential (654 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0654] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-18 : Int) + graphPotential (689 : State) <= graphPotential (654 : State)
        decide
    ·
      simp [graphSmokeNext_s0654, h_l0006, h_l0013] at h

theorem valid_s0655 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (655 : State) label t gain ->
      gain + graphPotential t <= graphPotential (655 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0655 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0655] at h
    rcases h with ⟨rfl, rfl⟩
    change (-51 : Int) + graphPotential (681 : State) <= graphPotential (655 : State)
    decide
  ·
    simp [graphSmokeNext_s0655, h_l0010] at h

theorem transition_ok_s0655 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (655 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (655 : State) := by
  intro h
  change graphSmokeNext_s0655 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0655] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-51 : Int) + graphPotential (681 : State) <= graphPotential (655 : State)
      decide
  ·
    simp [graphSmokeNext_s0655, h_l0010] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 648 <= s) (hhi : s < 656) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0648 h
  · exact valid_s0649 h
  · exact valid_s0650 h
  · exact valid_s0651 h
  · exact valid_s0652 h
  · exact valid_s0653 h
  · exact valid_s0654 h
  · exact valid_s0655 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 648 <= s) (hhi : s < 656) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0648 h
  · exact transition_ok_s0649 h
  · exact transition_ok_s0650 h
  · exact transition_ok_s0651 h
  · exact transition_ok_s0652 h
  · exact transition_ok_s0653 h
  · exact transition_ok_s0654 h
  · exact transition_ok_s0655 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard081
