import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard098

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [784, 792). -/
theorem valid_s0784 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (784 : State) label t gain ->
      gain + graphPotential t <= graphPotential (784 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0784 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0784] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (861 : State) <= graphPotential (784 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0784] at h
      rcases h with ⟨rfl, rfl⟩
      change (-63 : Int) + graphPotential (844 : State) <= graphPotential (784 : State)
      decide
    ·
      simp [graphSmokeNext_s0784, h_l0002, h_l0011] at h

theorem transition_ok_s0784 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (784 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (784 : State) := by
  intro h
  change graphSmokeNext_s0784 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0784] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (861 : State) <= graphPotential (784 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0784] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-63 : Int) + graphPotential (844 : State) <= graphPotential (784 : State)
        decide
    ·
      simp [graphSmokeNext_s0784, h_l0002, h_l0011] at h

theorem valid_s0785 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (785 : State) label t gain ->
      gain + graphPotential t <= graphPotential (785 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0785 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0785] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (862 : State) <= graphPotential (785 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0785] at h
      rcases h with ⟨rfl, rfl⟩
      change (-63 : Int) + graphPotential (849 : State) <= graphPotential (785 : State)
      decide
    ·
      simp [graphSmokeNext_s0785, h_l0002, h_l0011] at h

theorem transition_ok_s0785 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (785 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (785 : State) := by
  intro h
  change graphSmokeNext_s0785 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0785] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (862 : State) <= graphPotential (785 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0785] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-63 : Int) + graphPotential (849 : State) <= graphPotential (785 : State)
        decide
    ·
      simp [graphSmokeNext_s0785, h_l0002, h_l0011] at h

theorem valid_s0786 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (786 : State) label t gain ->
      gain + graphPotential t <= graphPotential (786 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0786 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0786] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (864 : State) <= graphPotential (786 : State)
    decide
  ·
    simp [graphSmokeNext_s0786, h_l0006] at h

theorem transition_ok_s0786 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (786 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (786 : State) := by
  intro h
  change graphSmokeNext_s0786 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0786] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (864 : State) <= graphPotential (786 : State)
      decide
  ·
    simp [graphSmokeNext_s0786, h_l0006] at h

theorem valid_s0787 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (787 : State) label t gain ->
      gain + graphPotential t <= graphPotential (787 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0787 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0787] at h
    rcases h with ⟨rfl, rfl⟩
    change (81 : Int) + graphPotential (853 : State) <= graphPotential (787 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0787] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (857 : State) <= graphPotential (787 : State)
      decide
    ·
      simp [graphSmokeNext_s0787, h_l0011, h_l0012] at h

theorem transition_ok_s0787 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (787 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (787 : State) := by
  intro h
  change graphSmokeNext_s0787 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0787] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (81 : Int) + graphPotential (853 : State) <= graphPotential (787 : State)
      decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0787] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-54 : Int) + graphPotential (857 : State) <= graphPotential (787 : State)
        decide
    ·
      simp [graphSmokeNext_s0787, h_l0011, h_l0012] at h

theorem valid_s0788 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (788 : State) label t gain ->
      gain + graphPotential t <= graphPotential (788 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0788 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0788] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (865 : State) <= graphPotential (788 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0788] at h
      rcases h with ⟨rfl, rfl⟩
      change (81 : Int) + graphPotential (854 : State) <= graphPotential (788 : State)
      decide
    ·
      simp [graphSmokeNext_s0788, h_l0006, h_l0011] at h

theorem transition_ok_s0788 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (788 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (788 : State) := by
  intro h
  change graphSmokeNext_s0788 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0788] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (865 : State) <= graphPotential (788 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0788] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (81 : Int) + graphPotential (854 : State) <= graphPotential (788 : State)
        decide
    ·
      simp [graphSmokeNext_s0788, h_l0006, h_l0011] at h

theorem valid_s0789 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (789 : State) label t gain ->
      gain + graphPotential t <= graphPotential (789 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0789 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0789] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (866 : State) <= graphPotential (789 : State)
    decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0789] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (855 : State) <= graphPotential (789 : State)
      decide
    ·
      by_cases h_l0013 : label = (13 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0789] at h
        rcases h with ⟨rfl, rfl⟩
        change (-18 : Int) + graphPotential (863 : State) <= graphPotential (789 : State)
        decide
      ·
        simp [graphSmokeNext_s0789, h_l0003, h_l0010, h_l0013] at h

theorem transition_ok_s0789 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (789 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (789 : State) := by
  intro h
  change graphSmokeNext_s0789 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0789] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (866 : State) <= graphPotential (789 : State)
      decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0789] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (855 : State) <= graphPotential (789 : State)
        decide
    ·
      by_cases h_l0013 : label = (13 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0789] at h
        rcases h with ⟨rfl, rfl⟩
        constructor
        · decide
        · change (-18 : Int) + graphPotential (863 : State) <= graphPotential (789 : State)
          decide
      ·
        simp [graphSmokeNext_s0789, h_l0003, h_l0010, h_l0013] at h

theorem valid_s0790 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (790 : State) label t gain ->
      gain + graphPotential t <= graphPotential (790 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0790 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0790] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (868 : State) <= graphPotential (790 : State)
    decide
  ·
    simp [graphSmokeNext_s0790, h_l0001] at h

theorem transition_ok_s0790 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (790 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (790 : State) := by
  intro h
  change graphSmokeNext_s0790 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0790] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (868 : State) <= graphPotential (790 : State)
      decide
  ·
    simp [graphSmokeNext_s0790, h_l0001] at h

theorem valid_s0791 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (791 : State) label t gain ->
      gain + graphPotential t <= graphPotential (791 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0791 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0791] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (869 : State) <= graphPotential (791 : State)
    decide
  ·
    simp [graphSmokeNext_s0791, h_l0001] at h

theorem transition_ok_s0791 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (791 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (791 : State) := by
  intro h
  change graphSmokeNext_s0791 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0791] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (869 : State) <= graphPotential (791 : State)
      decide
  ·
    simp [graphSmokeNext_s0791, h_l0001] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 784 <= s) (hhi : s < 792) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0784 h
  · exact valid_s0785 h
  · exact valid_s0786 h
  · exact valid_s0787 h
  · exact valid_s0788 h
  · exact valid_s0789 h
  · exact valid_s0790 h
  · exact valid_s0791 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 784 <= s) (hhi : s < 792) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0784 h
  · exact transition_ok_s0785 h
  · exact transition_ok_s0786 h
  · exact transition_ok_s0787 h
  · exact transition_ok_s0788 h
  · exact transition_ok_s0789 h
  · exact transition_ok_s0790 h
  · exact transition_ok_s0791 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard098
