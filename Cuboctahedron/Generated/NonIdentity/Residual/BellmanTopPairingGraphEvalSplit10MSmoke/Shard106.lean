import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard106

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [848, 856). -/
theorem valid_s0848 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (848 : State) label t gain ->
      gain + graphPotential t <= graphPotential (848 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0848 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0848] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (935 : State) <= graphPotential (848 : State)
    decide
  ·
    simp [graphSmokeNext_s0848, h_l0000] at h

theorem transition_ok_s0848 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (848 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (848 : State) := by
  intro h
  change graphSmokeNext_s0848 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0848] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (935 : State) <= graphPotential (848 : State)
      decide
  ·
    simp [graphSmokeNext_s0848, h_l0000] at h

theorem valid_s0849 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (849 : State) label t gain ->
      gain + graphPotential t <= graphPotential (849 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0849 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0849] at h
    rcases h with ⟨rfl, rfl⟩
    change (-63 : Int) + graphPotential (895 : State) <= graphPotential (849 : State)
    decide
  ·
    simp [graphSmokeNext_s0849, h_l0010] at h

theorem transition_ok_s0849 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (849 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (849 : State) := by
  intro h
  change graphSmokeNext_s0849 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0849] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-63 : Int) + graphPotential (895 : State) <= graphPotential (849 : State)
      decide
  ·
    simp [graphSmokeNext_s0849, h_l0010] at h

theorem valid_s0850 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (850 : State) label t gain ->
      gain + graphPotential t <= graphPotential (850 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0850 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0850] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (936 : State) <= graphPotential (850 : State)
    decide
  ·
    simp [graphSmokeNext_s0850, h_l0000] at h

theorem transition_ok_s0850 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (850 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (850 : State) := by
  intro h
  change graphSmokeNext_s0850 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0850] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (936 : State) <= graphPotential (850 : State)
      decide
  ·
    simp [graphSmokeNext_s0850, h_l0000] at h

theorem valid_s0851 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (851 : State) label t gain ->
      gain + graphPotential t <= graphPotential (851 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0851 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0851] at h
    rcases h with ⟨rfl, rfl⟩
    change (-54 : Int) + graphPotential (931 : State) <= graphPotential (851 : State)
    decide
  ·
    simp [graphSmokeNext_s0851, h_l0012] at h

theorem transition_ok_s0851 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (851 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (851 : State) := by
  intro h
  change graphSmokeNext_s0851 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0851] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-54 : Int) + graphPotential (931 : State) <= graphPotential (851 : State)
      decide
  ·
    simp [graphSmokeNext_s0851, h_l0012] at h

theorem valid_s0852 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (852 : State) label t gain ->
      gain + graphPotential t <= graphPotential (852 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0852 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0852] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (945 : State) <= graphPotential (852 : State)
    decide
  ·
    simp [graphSmokeNext_s0852, h_l0004] at h

theorem transition_ok_s0852 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (852 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (852 : State) := by
  intro h
  change graphSmokeNext_s0852 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0852] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (945 : State) <= graphPotential (852 : State)
      decide
  ·
    simp [graphSmokeNext_s0852, h_l0004] at h

theorem valid_s0853 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (853 : State) label t gain ->
      gain + graphPotential t <= graphPotential (853 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0853 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0853] at h
    rcases h with ⟨rfl, rfl⟩
    change (81 : Int) + graphPotential (905 : State) <= graphPotential (853 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0853] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (937 : State) <= graphPotential (853 : State)
      decide
    ·
      simp [graphSmokeNext_s0853, h_l0010, h_l0012] at h

theorem transition_ok_s0853 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (853 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (853 : State) := by
  intro h
  change graphSmokeNext_s0853 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0853] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (81 : Int) + graphPotential (905 : State) <= graphPotential (853 : State)
      decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0853] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-54 : Int) + graphPotential (937 : State) <= graphPotential (853 : State)
        decide
    ·
      simp [graphSmokeNext_s0853, h_l0010, h_l0012] at h

theorem valid_s0854 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (854 : State) label t gain ->
      gain + graphPotential t <= graphPotential (854 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0854 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0854] at h
    rcases h with ⟨rfl, rfl⟩
    change (81 : Int) + graphPotential (913 : State) <= graphPotential (854 : State)
    decide
  ·
    simp [graphSmokeNext_s0854, h_l0010] at h

theorem transition_ok_s0854 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (854 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (854 : State) := by
  intro h
  change graphSmokeNext_s0854 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0854] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (81 : Int) + graphPotential (913 : State) <= graphPotential (854 : State)
      decide
  ·
    simp [graphSmokeNext_s0854, h_l0010] at h

theorem valid_s0855 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (855 : State) label t gain ->
      gain + graphPotential t <= graphPotential (855 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0855 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0855] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (946 : State) <= graphPotential (855 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0855] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (921 : State) <= graphPotential (855 : State)
      decide
    ·
      by_cases h_l0013 : label = (13 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0855] at h
        rcases h with ⟨rfl, rfl⟩
        change (-18 : Int) + graphPotential (941 : State) <= graphPotential (855 : State)
        decide
      ·
        simp [graphSmokeNext_s0855, h_l0001, h_l0011, h_l0013] at h

theorem transition_ok_s0855 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (855 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (855 : State) := by
  intro h
  change graphSmokeNext_s0855 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0855] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (946 : State) <= graphPotential (855 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0855] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (921 : State) <= graphPotential (855 : State)
        decide
    ·
      by_cases h_l0013 : label = (13 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0855] at h
        rcases h with ⟨rfl, rfl⟩
        constructor
        · decide
        · change (-18 : Int) + graphPotential (941 : State) <= graphPotential (855 : State)
          decide
      ·
        simp [graphSmokeNext_s0855, h_l0001, h_l0011, h_l0013] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 848 <= s) (hhi : s < 856) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0848 h
  · exact valid_s0849 h
  · exact valid_s0850 h
  · exact valid_s0851 h
  · exact valid_s0852 h
  · exact valid_s0853 h
  · exact valid_s0854 h
  · exact valid_s0855 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 848 <= s) (hhi : s < 856) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0848 h
  · exact transition_ok_s0849 h
  · exact transition_ok_s0850 h
  · exact transition_ok_s0851 h
  · exact transition_ok_s0852 h
  · exact transition_ok_s0853 h
  · exact transition_ok_s0854 h
  · exact transition_ok_s0855 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard106
