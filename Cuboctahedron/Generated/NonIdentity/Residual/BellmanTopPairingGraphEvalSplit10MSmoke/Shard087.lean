import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard087

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [696, 704). -/
theorem valid_s0696 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (696 : State) label t gain ->
      gain + graphPotential t <= graphPotential (696 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0696 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0696] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (759 : State) <= graphPotential (696 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0696] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (752 : State) <= graphPotential (696 : State)
      decide
    ·
      simp [graphSmokeNext_s0696, h_l0005, h_l0013] at h

theorem transition_ok_s0696 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (696 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (696 : State) := by
  intro h
  change graphSmokeNext_s0696 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0696] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (759 : State) <= graphPotential (696 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0696] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-54 : Int) + graphPotential (752 : State) <= graphPotential (696 : State)
        decide
    ·
      simp [graphSmokeNext_s0696, h_l0005, h_l0013] at h

theorem valid_s0697 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (697 : State) label t gain ->
      gain + graphPotential t <= graphPotential (697 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0697 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0697] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (760 : State) <= graphPotential (697 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0697] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (753 : State) <= graphPotential (697 : State)
      decide
    ·
      simp [graphSmokeNext_s0697, h_l0005, h_l0013] at h

theorem transition_ok_s0697 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (697 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (697 : State) := by
  intro h
  change graphSmokeNext_s0697 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0697] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (760 : State) <= graphPotential (697 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0697] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-54 : Int) + graphPotential (753 : State) <= graphPotential (697 : State)
        decide
    ·
      simp [graphSmokeNext_s0697, h_l0005, h_l0013] at h

theorem valid_s0698 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (698 : State) label t gain ->
      gain + graphPotential t <= graphPotential (698 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0698 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0698] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (761 : State) <= graphPotential (698 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0698] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (754 : State) <= graphPotential (698 : State)
      decide
    ·
      simp [graphSmokeNext_s0698, h_l0005, h_l0013] at h

theorem transition_ok_s0698 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (698 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (698 : State) := by
  intro h
  change graphSmokeNext_s0698 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0698] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (761 : State) <= graphPotential (698 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0698] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-54 : Int) + graphPotential (754 : State) <= graphPotential (698 : State)
        decide
    ·
      simp [graphSmokeNext_s0698, h_l0005, h_l0013] at h

theorem valid_s0699 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (699 : State) label t gain ->
      gain + graphPotential t <= graphPotential (699 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0699 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0699] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (762 : State) <= graphPotential (699 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0699] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (755 : State) <= graphPotential (699 : State)
      decide
    ·
      simp [graphSmokeNext_s0699, h_l0005, h_l0013] at h

theorem transition_ok_s0699 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (699 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (699 : State) := by
  intro h
  change graphSmokeNext_s0699 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0699] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (762 : State) <= graphPotential (699 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0699] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-54 : Int) + graphPotential (755 : State) <= graphPotential (699 : State)
        decide
    ·
      simp [graphSmokeNext_s0699, h_l0005, h_l0013] at h

theorem valid_s0700 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (700 : State) label t gain ->
      gain + graphPotential t <= graphPotential (700 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0700 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0700] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (766 : State) <= graphPotential (700 : State)
    decide
  ·
    simp [graphSmokeNext_s0700, h_l0004] at h

theorem transition_ok_s0700 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (700 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (700 : State) := by
  intro h
  change graphSmokeNext_s0700 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0700] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (766 : State) <= graphPotential (700 : State)
      decide
  ·
    simp [graphSmokeNext_s0700, h_l0004] at h

theorem valid_s0701 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (701 : State) label t gain ->
      gain + graphPotential t <= graphPotential (701 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0701 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0701] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (768 : State) <= graphPotential (701 : State)
    decide
  ·
    simp [graphSmokeNext_s0701, h_l0004] at h

theorem transition_ok_s0701 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (701 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (701 : State) := by
  intro h
  change graphSmokeNext_s0701 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0701] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (768 : State) <= graphPotential (701 : State)
      decide
  ·
    simp [graphSmokeNext_s0701, h_l0004] at h

theorem valid_s0702 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (702 : State) label t gain ->
      gain + graphPotential t <= graphPotential (702 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0702 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0702] at h
    rcases h with ⟨rfl, rfl⟩
    change (45 : Int) + graphPotential (732 : State) <= graphPotential (702 : State)
    decide
  ·
    simp [graphSmokeNext_s0702, h_l0010] at h

theorem transition_ok_s0702 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (702 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (702 : State) := by
  intro h
  change graphSmokeNext_s0702 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0702] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (45 : Int) + graphPotential (732 : State) <= graphPotential (702 : State)
      decide
  ·
    simp [graphSmokeNext_s0702, h_l0010] at h

theorem valid_s0703 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (703 : State) label t gain ->
      gain + graphPotential t <= graphPotential (703 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0703 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0703] at h
    rcases h with ⟨rfl, rfl⟩
    change (45 : Int) + graphPotential (737 : State) <= graphPotential (703 : State)
    decide
  ·
    simp [graphSmokeNext_s0703, h_l0010] at h

theorem transition_ok_s0703 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (703 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (703 : State) := by
  intro h
  change graphSmokeNext_s0703 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0703] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (45 : Int) + graphPotential (737 : State) <= graphPotential (703 : State)
      decide
  ·
    simp [graphSmokeNext_s0703, h_l0010] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 696 <= s) (hhi : s < 704) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0696 h
  · exact valid_s0697 h
  · exact valid_s0698 h
  · exact valid_s0699 h
  · exact valid_s0700 h
  · exact valid_s0701 h
  · exact valid_s0702 h
  · exact valid_s0703 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 696 <= s) (hhi : s < 704) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0696 h
  · exact transition_ok_s0697 h
  · exact transition_ok_s0698 h
  · exact transition_ok_s0699 h
  · exact transition_ok_s0700 h
  · exact transition_ok_s0701 h
  · exact transition_ok_s0702 h
  · exact transition_ok_s0703 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard087
