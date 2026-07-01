import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard079

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [632, 640). -/
theorem valid_s0632 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (632 : State) label t gain ->
      gain + graphPotential t <= graphPotential (632 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0632 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0632] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (662 : State) <= graphPotential (632 : State)
    decide
  ·
    simp [graphSmokeNext_s0632, h_l0007] at h

theorem transition_ok_s0632 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (632 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (632 : State) := by
  intro h
  change graphSmokeNext_s0632 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0632] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (662 : State) <= graphPotential (632 : State)
      decide
  ·
    simp [graphSmokeNext_s0632, h_l0007] at h

theorem valid_s0633 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (633 : State) label t gain ->
      gain + graphPotential t <= graphPotential (633 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0633 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0633] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (666 : State) <= graphPotential (633 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0633] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (659 : State) <= graphPotential (633 : State)
      decide
    ·
      simp [graphSmokeNext_s0633, h_l0004, h_l0013] at h

theorem transition_ok_s0633 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (633 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (633 : State) := by
  intro h
  change graphSmokeNext_s0633 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0633] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (666 : State) <= graphPotential (633 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0633] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-18 : Int) + graphPotential (659 : State) <= graphPotential (633 : State)
        decide
    ·
      simp [graphSmokeNext_s0633, h_l0004, h_l0013] at h

theorem valid_s0634 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (634 : State) label t gain ->
      gain + graphPotential t <= graphPotential (634 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0634 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0634] at h
    rcases h with ⟨rfl, rfl⟩
    change (45 : Int) + graphPotential (651 : State) <= graphPotential (634 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0634] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (661 : State) <= graphPotential (634 : State)
      decide
    ·
      simp [graphSmokeNext_s0634, h_l0010, h_l0013] at h

theorem transition_ok_s0634 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (634 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (634 : State) := by
  intro h
  change graphSmokeNext_s0634 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0634] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (45 : Int) + graphPotential (651 : State) <= graphPotential (634 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0634] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-18 : Int) + graphPotential (661 : State) <= graphPotential (634 : State)
        decide
    ·
      simp [graphSmokeNext_s0634, h_l0010, h_l0013] at h

theorem valid_s0635 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (635 : State) label t gain ->
      gain + graphPotential t <= graphPotential (635 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0635 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0635] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (667 : State) <= graphPotential (635 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0635] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (664 : State) <= graphPotential (635 : State)
      decide
    ·
      simp [graphSmokeNext_s0635, h_l0004, h_l0013] at h

theorem transition_ok_s0635 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (635 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (635 : State) := by
  intro h
  change graphSmokeNext_s0635 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0635] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (667 : State) <= graphPotential (635 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0635] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-18 : Int) + graphPotential (664 : State) <= graphPotential (635 : State)
        decide
    ·
      simp [graphSmokeNext_s0635, h_l0004, h_l0013] at h

theorem valid_s0636 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (636 : State) label t gain ->
      gain + graphPotential t <= graphPotential (636 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0636 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0636] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (669 : State) <= graphPotential (636 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0636] at h
      rcases h with ⟨rfl, rfl⟩
      change (-51 : Int) + graphPotential (655 : State) <= graphPotential (636 : State)
      decide
    ·
      simp [graphSmokeNext_s0636, h_l0004, h_l0011] at h

theorem transition_ok_s0636 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (636 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (636 : State) := by
  intro h
  change graphSmokeNext_s0636 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0636] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (669 : State) <= graphPotential (636 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0636] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-51 : Int) + graphPotential (655 : State) <= graphPotential (636 : State)
        decide
    ·
      simp [graphSmokeNext_s0636, h_l0004, h_l0011] at h

theorem valid_s0637 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (637 : State) label t gain ->
      gain + graphPotential t <= graphPotential (637 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0637 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0637] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (670 : State) <= graphPotential (637 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0637] at h
      rcases h with ⟨rfl, rfl⟩
      change (-51 : Int) + graphPotential (656 : State) <= graphPotential (637 : State)
      decide
    ·
      simp [graphSmokeNext_s0637, h_l0004, h_l0011] at h

theorem transition_ok_s0637 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (637 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (637 : State) := by
  intro h
  change graphSmokeNext_s0637 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0637] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (670 : State) <= graphPotential (637 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0637] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-51 : Int) + graphPotential (656 : State) <= graphPotential (637 : State)
        decide
    ·
      simp [graphSmokeNext_s0637, h_l0004, h_l0011] at h

theorem valid_s0638 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (638 : State) label t gain ->
      gain + graphPotential t <= graphPotential (638 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0638 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0638] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (671 : State) <= graphPotential (638 : State)
    decide
  ·
    simp [graphSmokeNext_s0638, h_l0007] at h

theorem transition_ok_s0638 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (638 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (638 : State) := by
  intro h
  change graphSmokeNext_s0638 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0638] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (671 : State) <= graphPotential (638 : State)
      decide
  ·
    simp [graphSmokeNext_s0638, h_l0007] at h

theorem valid_s0639 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (639 : State) label t gain ->
      gain + graphPotential t <= graphPotential (639 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0639 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0639] at h
    rcases h with ⟨rfl, rfl⟩
    change (45 : Int) + graphPotential (661 : State) <= graphPotential (639 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0639] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (668 : State) <= graphPotential (639 : State)
      decide
    ·
      simp [graphSmokeNext_s0639, h_l0011, h_l0012] at h

theorem transition_ok_s0639 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (639 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (639 : State) := by
  intro h
  change graphSmokeNext_s0639 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0639] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (45 : Int) + graphPotential (661 : State) <= graphPotential (639 : State)
      decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0639] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-18 : Int) + graphPotential (668 : State) <= graphPotential (639 : State)
        decide
    ·
      simp [graphSmokeNext_s0639, h_l0011, h_l0012] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 632 <= s) (hhi : s < 640) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0632 h
  · exact valid_s0633 h
  · exact valid_s0634 h
  · exact valid_s0635 h
  · exact valid_s0636 h
  · exact valid_s0637 h
  · exact valid_s0638 h
  · exact valid_s0639 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 632 <= s) (hhi : s < 640) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0632 h
  · exact transition_ok_s0633 h
  · exact transition_ok_s0634 h
  · exact transition_ok_s0635 h
  · exact transition_ok_s0636 h
  · exact transition_ok_s0637 h
  · exact transition_ok_s0638 h
  · exact transition_ok_s0639 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard079
