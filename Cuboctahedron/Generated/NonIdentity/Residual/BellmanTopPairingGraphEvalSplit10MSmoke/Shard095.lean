import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard095

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [760, 768). -/
theorem valid_s0760 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (760 : State) label t gain ->
      gain + graphPotential t <= graphPotential (760 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0760 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0760] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (837 : State) <= graphPotential (760 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0760] at h
      rcases h with ⟨rfl, rfl⟩
      change (90 : Int) + graphPotential (822 : State) <= graphPotential (760 : State)
      decide
    ·
      simp [graphSmokeNext_s0760, h_l0002, h_l0013] at h

theorem transition_ok_s0760 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (760 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (760 : State) := by
  intro h
  change graphSmokeNext_s0760 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0760] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (837 : State) <= graphPotential (760 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0760] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (90 : Int) + graphPotential (822 : State) <= graphPotential (760 : State)
        decide
    ·
      simp [graphSmokeNext_s0760, h_l0002, h_l0013] at h

theorem valid_s0761 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (761 : State) label t gain ->
      gain + graphPotential t <= graphPotential (761 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0761 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0761] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (838 : State) <= graphPotential (761 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0761] at h
      rcases h with ⟨rfl, rfl⟩
      change (90 : Int) + graphPotential (828 : State) <= graphPotential (761 : State)
      decide
    ·
      simp [graphSmokeNext_s0761, h_l0002, h_l0013] at h

theorem transition_ok_s0761 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (761 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (761 : State) := by
  intro h
  change graphSmokeNext_s0761 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0761] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (838 : State) <= graphPotential (761 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0761] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (90 : Int) + graphPotential (828 : State) <= graphPotential (761 : State)
        decide
    ·
      simp [graphSmokeNext_s0761, h_l0002, h_l0013] at h

theorem valid_s0762 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (762 : State) label t gain ->
      gain + graphPotential t <= graphPotential (762 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0762 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0762] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (839 : State) <= graphPotential (762 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0762] at h
      rcases h with ⟨rfl, rfl⟩
      change (90 : Int) + graphPotential (829 : State) <= graphPotential (762 : State)
      decide
    ·
      simp [graphSmokeNext_s0762, h_l0002, h_l0013] at h

theorem transition_ok_s0762 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (762 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (762 : State) := by
  intro h
  change graphSmokeNext_s0762 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0762] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (839 : State) <= graphPotential (762 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0762] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (90 : Int) + graphPotential (829 : State) <= graphPotential (762 : State)
        decide
    ·
      simp [graphSmokeNext_s0762, h_l0002, h_l0013] at h

theorem valid_s0763 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (763 : State) label t gain ->
      gain + graphPotential t <= graphPotential (763 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0763 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0763] at h
    rcases h with ⟨rfl, rfl⟩
    change (81 : Int) + graphPotential (798 : State) <= graphPotential (763 : State)
    decide
  ·
    simp [graphSmokeNext_s0763, h_l0010] at h

theorem transition_ok_s0763 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (763 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (763 : State) := by
  intro h
  change graphSmokeNext_s0763 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0763] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (81 : Int) + graphPotential (798 : State) <= graphPotential (763 : State)
      decide
  ·
    simp [graphSmokeNext_s0763, h_l0010] at h

theorem valid_s0764 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (764 : State) label t gain ->
      gain + graphPotential t <= graphPotential (764 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0764 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0764] at h
    rcases h with ⟨rfl, rfl⟩
    change (81 : Int) + graphPotential (799 : State) <= graphPotential (764 : State)
    decide
  ·
    simp [graphSmokeNext_s0764, h_l0010] at h

theorem transition_ok_s0764 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (764 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (764 : State) := by
  intro h
  change graphSmokeNext_s0764 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0764] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (81 : Int) + graphPotential (799 : State) <= graphPotential (764 : State)
      decide
  ·
    simp [graphSmokeNext_s0764, h_l0010] at h

theorem valid_s0765 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (765 : State) label t gain ->
      gain + graphPotential t <= graphPotential (765 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0765 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0765] at h
    rcases h with ⟨rfl, rfl⟩
    change (81 : Int) + graphPotential (801 : State) <= graphPotential (765 : State)
    decide
  ·
    simp [graphSmokeNext_s0765, h_l0010] at h

theorem transition_ok_s0765 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (765 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (765 : State) := by
  intro h
  change graphSmokeNext_s0765 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0765] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (81 : Int) + graphPotential (801 : State) <= graphPotential (765 : State)
      decide
  ·
    simp [graphSmokeNext_s0765, h_l0010] at h

theorem valid_s0766 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (766 : State) label t gain ->
      gain + graphPotential t <= graphPotential (766 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0766 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0766] at h
    rcases h with ⟨rfl, rfl⟩
    change (81 : Int) + graphPotential (802 : State) <= graphPotential (766 : State)
    decide
  ·
    simp [graphSmokeNext_s0766, h_l0010] at h

theorem transition_ok_s0766 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (766 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (766 : State) := by
  intro h
  change graphSmokeNext_s0766 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0766] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (81 : Int) + graphPotential (802 : State) <= graphPotential (766 : State)
      decide
  ·
    simp [graphSmokeNext_s0766, h_l0010] at h

theorem valid_s0767 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (767 : State) label t gain ->
      gain + graphPotential t <= graphPotential (767 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0767 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0767] at h
    rcases h with ⟨rfl, rfl⟩
    change (81 : Int) + graphPotential (809 : State) <= graphPotential (767 : State)
    decide
  ·
    simp [graphSmokeNext_s0767, h_l0010] at h

theorem transition_ok_s0767 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (767 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (767 : State) := by
  intro h
  change graphSmokeNext_s0767 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0767] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (81 : Int) + graphPotential (809 : State) <= graphPotential (767 : State)
      decide
  ·
    simp [graphSmokeNext_s0767, h_l0010] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 760 <= s) (hhi : s < 768) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0760 h
  · exact valid_s0761 h
  · exact valid_s0762 h
  · exact valid_s0763 h
  · exact valid_s0764 h
  · exact valid_s0765 h
  · exact valid_s0766 h
  · exact valid_s0767 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 760 <= s) (hhi : s < 768) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0760 h
  · exact transition_ok_s0761 h
  · exact transition_ok_s0762 h
  · exact transition_ok_s0763 h
  · exact transition_ok_s0764 h
  · exact transition_ok_s0765 h
  · exact transition_ok_s0766 h
  · exact transition_ok_s0767 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard095
