import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard097

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [776, 784). -/
theorem valid_s0776 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (776 : State) label t gain ->
      gain + graphPotential t <= graphPotential (776 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0776 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0776] at h
    rcases h with ⟨rfl, rfl⟩
    change (-63 : Int) + graphPotential (823 : State) <= graphPotential (776 : State)
    decide
  ·
    simp [graphSmokeNext_s0776, h_l0010] at h

theorem transition_ok_s0776 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (776 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (776 : State) := by
  intro h
  change graphSmokeNext_s0776 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0776] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-63 : Int) + graphPotential (823 : State) <= graphPotential (776 : State)
      decide
  ·
    simp [graphSmokeNext_s0776, h_l0010] at h

theorem valid_s0777 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (777 : State) label t gain ->
      gain + graphPotential t <= graphPotential (777 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0777 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0777] at h
    rcases h with ⟨rfl, rfl⟩
    change (90 : Int) + graphPotential (845 : State) <= graphPotential (777 : State)
    decide
  ·
    simp [graphSmokeNext_s0777, h_l0012] at h

theorem transition_ok_s0777 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (777 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (777 : State) := by
  intro h
  change graphSmokeNext_s0777 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0777] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (90 : Int) + graphPotential (845 : State) <= graphPotential (777 : State)
      decide
  ·
    simp [graphSmokeNext_s0777, h_l0012] at h

theorem valid_s0778 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (778 : State) label t gain ->
      gain + graphPotential t <= graphPotential (778 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0778 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0778] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (852 : State) <= graphPotential (778 : State)
    decide
  ·
    simp [graphSmokeNext_s0778, h_l0001] at h

theorem transition_ok_s0778 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (778 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (778 : State) := by
  intro h
  change graphSmokeNext_s0778 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0778] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (852 : State) <= graphPotential (778 : State)
      decide
  ·
    simp [graphSmokeNext_s0778, h_l0001] at h

theorem valid_s0779 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (779 : State) label t gain ->
      gain + graphPotential t <= graphPotential (779 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0779 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0779] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (856 : State) <= graphPotential (779 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0779] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (851 : State) <= graphPotential (779 : State)
      decide
    ·
      simp [graphSmokeNext_s0779, h_l0005, h_l0013] at h

theorem transition_ok_s0779 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (779 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (779 : State) := by
  intro h
  change graphSmokeNext_s0779 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0779] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (856 : State) <= graphPotential (779 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0779] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-54 : Int) + graphPotential (851 : State) <= graphPotential (779 : State)
        decide
    ·
      simp [graphSmokeNext_s0779, h_l0005, h_l0013] at h

theorem valid_s0780 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (780 : State) label t gain ->
      gain + graphPotential t <= graphPotential (780 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0780 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0780] at h
    rcases h with ⟨rfl, rfl⟩
    change (81 : Int) + graphPotential (832 : State) <= graphPotential (780 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0780] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (853 : State) <= graphPotential (780 : State)
      decide
    ·
      simp [graphSmokeNext_s0780, h_l0010, h_l0013] at h

theorem transition_ok_s0780 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (780 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (780 : State) := by
  intro h
  change graphSmokeNext_s0780 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0780] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (81 : Int) + graphPotential (832 : State) <= graphPotential (780 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0780] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-54 : Int) + graphPotential (853 : State) <= graphPotential (780 : State)
        decide
    ·
      simp [graphSmokeNext_s0780, h_l0010, h_l0013] at h

theorem valid_s0781 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (781 : State) label t gain ->
      gain + graphPotential t <= graphPotential (781 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0781 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0781] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (858 : State) <= graphPotential (781 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0781] at h
      rcases h with ⟨rfl, rfl⟩
      change (-63 : Int) + graphPotential (840 : State) <= graphPotential (781 : State)
      decide
    ·
      simp [graphSmokeNext_s0781, h_l0002, h_l0011] at h

theorem transition_ok_s0781 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (781 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (781 : State) := by
  intro h
  change graphSmokeNext_s0781 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0781] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (858 : State) <= graphPotential (781 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0781] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-63 : Int) + graphPotential (840 : State) <= graphPotential (781 : State)
        decide
    ·
      simp [graphSmokeNext_s0781, h_l0002, h_l0011] at h

theorem valid_s0782 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (782 : State) label t gain ->
      gain + graphPotential t <= graphPotential (782 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0782 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0782] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (859 : State) <= graphPotential (782 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0782] at h
      rcases h with ⟨rfl, rfl⟩
      change (-63 : Int) + graphPotential (841 : State) <= graphPotential (782 : State)
      decide
    ·
      simp [graphSmokeNext_s0782, h_l0002, h_l0011] at h

theorem transition_ok_s0782 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (782 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (782 : State) := by
  intro h
  change graphSmokeNext_s0782 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0782] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (859 : State) <= graphPotential (782 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0782] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-63 : Int) + graphPotential (841 : State) <= graphPotential (782 : State)
        decide
    ·
      simp [graphSmokeNext_s0782, h_l0002, h_l0011] at h

theorem valid_s0783 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (783 : State) label t gain ->
      gain + graphPotential t <= graphPotential (783 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0783 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0783] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (860 : State) <= graphPotential (783 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0783] at h
      rcases h with ⟨rfl, rfl⟩
      change (-63 : Int) + graphPotential (842 : State) <= graphPotential (783 : State)
      decide
    ·
      simp [graphSmokeNext_s0783, h_l0002, h_l0011] at h

theorem transition_ok_s0783 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (783 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (783 : State) := by
  intro h
  change graphSmokeNext_s0783 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0783] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (860 : State) <= graphPotential (783 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0783] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-63 : Int) + graphPotential (842 : State) <= graphPotential (783 : State)
        decide
    ·
      simp [graphSmokeNext_s0783, h_l0002, h_l0011] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 776 <= s) (hhi : s < 784) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0776 h
  · exact valid_s0777 h
  · exact valid_s0778 h
  · exact valid_s0779 h
  · exact valid_s0780 h
  · exact valid_s0781 h
  · exact valid_s0782 h
  · exact valid_s0783 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 776 <= s) (hhi : s < 784) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0776 h
  · exact transition_ok_s0777 h
  · exact transition_ok_s0778 h
  · exact transition_ok_s0779 h
  · exact transition_ok_s0780 h
  · exact transition_ok_s0781 h
  · exact transition_ok_s0782 h
  · exact transition_ok_s0783 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard097
