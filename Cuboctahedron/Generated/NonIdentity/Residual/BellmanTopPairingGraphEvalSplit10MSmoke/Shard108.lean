import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard108

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [864, 872). -/
theorem valid_s0864 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (864 : State) label t gain ->
      gain + graphPotential t <= graphPotential (864 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0864 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0864] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (957 : State) <= graphPotential (864 : State)
    decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0864] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (943 : State) <= graphPotential (864 : State)
      decide
    ·
      simp [graphSmokeNext_s0864, h_l0002, h_l0010] at h

theorem transition_ok_s0864 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (864 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (864 : State) := by
  intro h
  change graphSmokeNext_s0864 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0864] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (957 : State) <= graphPotential (864 : State)
      decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0864] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (943 : State) <= graphPotential (864 : State)
        decide
    ·
      simp [graphSmokeNext_s0864, h_l0002, h_l0010] at h

theorem valid_s0865 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (865 : State) label t gain ->
      gain + graphPotential t <= graphPotential (865 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0865 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0865] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (958 : State) <= graphPotential (865 : State)
    decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0865] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (944 : State) <= graphPotential (865 : State)
      decide
    ·
      simp [graphSmokeNext_s0865, h_l0002, h_l0010] at h

theorem transition_ok_s0865 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (865 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (865 : State) := by
  intro h
  change graphSmokeNext_s0865 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0865] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (958 : State) <= graphPotential (865 : State)
      decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0865] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (944 : State) <= graphPotential (865 : State)
        decide
    ·
      simp [graphSmokeNext_s0865, h_l0002, h_l0010] at h

theorem valid_s0866 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (866 : State) label t gain ->
      gain + graphPotential t <= graphPotential (866 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0866 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0866] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (959 : State) <= graphPotential (866 : State)
    decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0866] at h
      rcases h with ⟨rfl, rfl⟩
      change (-21 : Int) + graphPotential (948 : State) <= graphPotential (866 : State)
      decide
    ·
      by_cases h_l0012 : label = (12 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0866] at h
        rcases h with ⟨rfl, rfl⟩
        change (114 : Int) + graphPotential (956 : State) <= graphPotential (866 : State)
        decide
      ·
        simp [graphSmokeNext_s0866, h_l0001, h_l0010, h_l0012] at h

theorem transition_ok_s0866 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (866 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (866 : State) := by
  intro h
  change graphSmokeNext_s0866 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0866] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (959 : State) <= graphPotential (866 : State)
      decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0866] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-21 : Int) + graphPotential (948 : State) <= graphPotential (866 : State)
        decide
    ·
      by_cases h_l0012 : label = (12 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0866] at h
        rcases h with ⟨rfl, rfl⟩
        constructor
        · decide
        · change (114 : Int) + graphPotential (956 : State) <= graphPotential (866 : State)
          decide
      ·
        simp [graphSmokeNext_s0866, h_l0001, h_l0010, h_l0012] at h

theorem valid_s0867 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (867 : State) label t gain ->
      gain + graphPotential t <= graphPotential (867 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0867 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0867] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (961 : State) <= graphPotential (867 : State)
    decide
  ·
    simp [graphSmokeNext_s0867, h_l0006] at h

theorem transition_ok_s0867 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (867 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (867 : State) := by
  intro h
  change graphSmokeNext_s0867 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0867] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (961 : State) <= graphPotential (867 : State)
      decide
  ·
    simp [graphSmokeNext_s0867, h_l0006] at h

theorem valid_s0868 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (868 : State) label t gain ->
      gain + graphPotential t <= graphPotential (868 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0868 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0868] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (962 : State) <= graphPotential (868 : State)
    decide
  ·
    simp [graphSmokeNext_s0868, h_l0006] at h

theorem transition_ok_s0868 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (868 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (868 : State) := by
  intro h
  change graphSmokeNext_s0868 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0868] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (962 : State) <= graphPotential (868 : State)
      decide
  ·
    simp [graphSmokeNext_s0868, h_l0006] at h

theorem valid_s0869 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (869 : State) label t gain ->
      gain + graphPotential t <= graphPotential (869 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0869 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0869] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (963 : State) <= graphPotential (869 : State)
    decide
  ·
    simp [graphSmokeNext_s0869, h_l0006] at h

theorem transition_ok_s0869 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (869 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (869 : State) := by
  intro h
  change graphSmokeNext_s0869 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0869] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (963 : State) <= graphPotential (869 : State)
      decide
  ·
    simp [graphSmokeNext_s0869, h_l0006] at h

theorem valid_s0870 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (870 : State) label t gain ->
      gain + graphPotential t <= graphPotential (870 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0870 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0870] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (964 : State) <= graphPotential (870 : State)
    decide
  ·
    simp [graphSmokeNext_s0870, h_l0006] at h

theorem transition_ok_s0870 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (870 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (870 : State) := by
  intro h
  change graphSmokeNext_s0870 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0870] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (964 : State) <= graphPotential (870 : State)
      decide
  ·
    simp [graphSmokeNext_s0870, h_l0006] at h

theorem valid_s0871 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (871 : State) label t gain ->
      gain + graphPotential t <= graphPotential (871 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0871 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0871] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (965 : State) <= graphPotential (871 : State)
    decide
  ·
    simp [graphSmokeNext_s0871, h_l0006] at h

theorem transition_ok_s0871 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (871 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (871 : State) := by
  intro h
  change graphSmokeNext_s0871 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0871] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (965 : State) <= graphPotential (871 : State)
      decide
  ·
    simp [graphSmokeNext_s0871, h_l0006] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 864 <= s) (hhi : s < 872) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0864 h
  · exact valid_s0865 h
  · exact valid_s0866 h
  · exact valid_s0867 h
  · exact valid_s0868 h
  · exact valid_s0869 h
  · exact valid_s0870 h
  · exact valid_s0871 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 864 <= s) (hhi : s < 872) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0864 h
  · exact transition_ok_s0865 h
  · exact transition_ok_s0866 h
  · exact transition_ok_s0867 h
  · exact transition_ok_s0868 h
  · exact transition_ok_s0869 h
  · exact transition_ok_s0870 h
  · exact transition_ok_s0871 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard108
